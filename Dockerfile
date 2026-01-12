FROM dart:stable AS build

WORKDIR /app

# Resolve dependencies
# We copy pubspec files first to cache dependencies
COPY donein5_backend_server/pubspec.* ./donein5_backend_server/
WORKDIR /app/donein5_backend_server
RUN dart pub get

# Copy source code
WORKDIR /app
COPY donein5_backend_server ./donein5_backend_server

# Build the server executable
WORKDIR /app/donein5_backend_server
RUN dart compile exe bin/main.dart -o bin/server

# Build runtime image
FROM debian:stable-slim

# Install ca-certificates for secure DB connections
RUN apt-get update && apt-get install -y ca-certificates && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy executable and configuration
COPY --from=build /app/donein5_backend_server/bin/server server
COPY --from=build /app/donein5_backend_server/config config
COPY --from=build /app/donein5_backend_server/web web

# Serverpod listens on 8080 by default
EXPOSE 8080

# Run in production mode
CMD ["./server", "--mode", "production"]
