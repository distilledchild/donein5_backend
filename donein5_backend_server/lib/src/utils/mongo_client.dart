import 'package:mongo_dart/mongo_dart.dart';
import 'package:dotenv/dotenv.dart';

class MongoDB {
  static final MongoDB _instance = MongoDB._internal();
  factory MongoDB() => _instance;
  MongoDB._internal();

  Db? _db;
  
  DbCollection? get members => _db?.collection(_env['MONGODB_COLLECTION'] ?? 'MEMBER');
  // Add other collections as needed
  DbCollection? get recipes => _db?.collection('MFDS_ENG'); // Assuming this is the recipe collection based on user request "MFDS_ENG"

  final _env = DotEnv(includePlatformEnvironment: true)..load();

  Future<void> connect() async {
    if (_db != null && _db!.isConnected) return;
    
    // Create new env if not loaded, or use field. 
    // Field initializer is ran on instance creation. Singleton implies it runs once.
    // _env is available.
    
    final host = _env['MONGODB_HOST'] ?? '';
    final user = _env['MONGODB_USER'] ?? '';
    final password = _env['MONGODB_PASSWORD'] ?? '';
    final database = _env['MONGODB_DATABASE'] ?? 'donein5';
    final appName = _env['MONGODB_APP_NAME'] ?? '';

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
