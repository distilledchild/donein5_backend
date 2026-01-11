import 'package:mongo_dart/mongo_dart.dart';
import 'package:dotenv/dotenv.dart';

class MongoDB {
  static final MongoDB _instance = MongoDB._internal();
  factory MongoDB() => _instance;
  MongoDB._internal();

  Db? _db;
  
  DbCollection? get members => _db?.collection(env['MONGODB_COLLECTION'] ?? 'MEMBER');
  // Add other collections as needed
  DbCollection? get recipes => _db?.collection('MFDS_ENG'); // Assuming this is the recipe collection based on user request "MFDS_ENG"

  Future<void> connect() async {
    if (_db != null && _db!.isConnected) return;

    // Load .env from project root or specific location
    // Note: Serverpod usually runs from the server directory. 
    // We will assume .env is placed in donein5_backend_server/ or we need to pass the path.
    // For now, let's try to load from current directory.
    var env = DotEnv(includePlatformEnvironment: true)..load();
    
    final host = env['MONGODB_HOST'] ?? '';
    final user = env['MONGODB_USER'] ?? '';
    final password = env['MONGODB_PASSWORD'] ?? '';
    final database = env['MONGODB_DATABASE'] ?? 'donein5';
    final appName = env['MONGODB_APP_NAME'] ?? '';

    if (host.isEmpty) {
      print('MongoDB credentials not found in environment');
      return;
    }

    final encodedUser = Uri.encodeComponent(user);
    final encodedPassword = Uri.encodeComponent(password);

    final connStr =
        'mongodb+srv://$encodedUser:$encodedPassword@$host/$database?appName=$appName&retryWrites=true&w=majority';
    
    try {
      _db = await Db.create(connStr);
      await _db!.open();
      print('Connected to MongoDB successfully!');
    } catch (e) {
      print('MongoDB connection error: $e');
    }
  }
}
