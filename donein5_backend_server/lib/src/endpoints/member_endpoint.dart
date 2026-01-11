import 'dart:convert';
import 'package:serverpod/serverpod.dart';
import 'package:crypto/crypto.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import '../generated/protocol.dart';
import '../utils/mongo_client.dart';

class MemberEndpoint extends Endpoint {
  
  // Helper to get MongoDB collection
  mongo.DbCollection get _members => MongoDB().members!;

  /// Register with Email
  Future<Member?> registerWithEmail(Session session, {required String email, required String password, String? profileImage}) async {
    // Check existing
    final existing = await _members.findOne(mongo.where.eq('email', email));
    if (existing != null) {
      return null; // Already exists
    }

    final name = email.split('@').first;
    final now = DateTime.now();
    final passwordHash = sha256.convert(utf8.encode(password)).toString();
    
    // Create member document
    final doc = {
      'name': name,
      'auth': 'personal',
      'email': email,
      'passwordHash': passwordHash,
      'profileImage': profileImage, // Save the passed avatar
      'createdAt': now.toIso8601String(),
      'updatedAt': now.toIso8601String(),
      // Add default favorite structure
      'favoriteFoods': {'All Favorites': []},
    };

    final result = await _members.insertOne(doc);
    if (result.isSuccess) {
      doc['_id'] = result.id; // Inject ID
      return _mapToMember(doc);
    }
    return null;
  }

  /// Login with Email
  Future<Member?> loginWithEmail(Session session, {required String email, required String password}) async {
    final passwordHash = sha256.convert(utf8.encode(password)).toString();
    final doc = await _members.findOne(
      mongo.where.eq('email', email).eq('passwordHash', passwordHash),
    );

    if (doc != null) {
      return _mapToMember(doc);
    }
    return null;
  }

  /// Find by Email
  Future<Member?> findByEmail(Session session, {required String email}) async {
    final doc = await _members.findOne(mongo.where.eq('email', email));
    if (doc != null) {
      return _mapToMember(doc);
    }
    return null;
  }

  /// Register with Google
  Future<Member?> registerWithGoogle(Session session, {
    required String googleId, 
    required String name, 
    required String email, 
    String? photoUrl
  }) async {
    // Check existing
    var existing = await _members.findOne(mongo.where.eq('email', email));
    
    final now = DateTime.now();

    if (existing != null) {
       // Update existing
       await _members.updateOne(
         mongo.where.eq('email', email),
         mongo.modify
           .set('auth', jsonEncode({'googleId': googleId}))
           .set('profileImage', photoUrl)
           .set('name', name)
           .set('updatedAt', now.toIso8601String())
       );
       final updated = await _members.findOne(mongo.where.eq('email', email));
       return _mapToMember(updated!);
    }

    // Create new
    final doc = {
      'name': name,
      'auth': jsonEncode({'googleId': googleId}),
      'email': email,
      'profileImage': photoUrl,
      'createdAt': now.toIso8601String(),
      'updatedAt': now.toIso8601String(),
      'favoriteFoods': {'All Favorites': []},
    };

    final result = await _members.insertOne(doc);
    if (result.isSuccess) {
      doc['_id'] = result.id;
      return _mapToMember(doc);
    }
    return null;
  }

  /// Register with Facebook
  Future<Member?> registerWithFacebook(Session session, {
    required String facebookId, 
    required String name, 
    required String email, 
    String? photoUrl
  }) async {
    // Check existing
    var existing = await _members.findOne(mongo.where.eq('email', email));
    
    final now = DateTime.now();

    if (existing != null) {
       // Update existing
       await _members.updateOne(
         mongo.where.eq('email', email),
         mongo.modify
           .set('auth', jsonEncode({'facebookId': facebookId}))
           .set('profileImage', photoUrl)
           .set('updatedAt', now.toIso8601String())
       );
       final updated = await _members.findOne(mongo.where.eq('email', email));
       return _mapToMember(updated!);
    }

    // Create new
    final doc = {
      'name': name,
      'auth': jsonEncode({'facebookId': facebookId}),
      'email': email,
      'profileImage': photoUrl,
      'createdAt': now.toIso8601String(),
      'updatedAt': now.toIso8601String(),
      'favoriteFoods': {'All Favorites': []},
    };

    final result = await _members.insertOne(doc);
    if (result.isSuccess) {
      doc['_id'] = result.id;
      return _mapToMember(doc);
    }
    return null;
  }

  /// Add Favorite Food
  Future<bool> addFavoriteFood(Session session, {required String email, required String foodId}) async {
    final member = await _members.findOne(mongo.where.eq('email', email));
    if (member == null) return false;

    // Logic to handle Map structure migration (similar to frontend)
    // For brevity, we assume new structure is Map
    // Simply using $addToSet if it was just an array, but here it is a Map called favoriteFoods
    // with key "All Favorites".
    
    // We can use dot notation for nested fields in MongoDB
    final result = await _members.updateOne(
      mongo.where.eq('email', email),
      mongo.modify
        .addToSet('favoriteFoods.All Favorites', foodId)
        .set('updatedAt', DateTime.now().toIso8601String()),
    );
    
    // If "All Favorites" didn't exist, we might need a more complex update, 
    // but assuming migration or default structure handles it.
    
    return result.nModified > 0;
  }

  /// Update Email
  Future<bool> updateEmail(Session session, {required String oldEmail, required String newEmail}) async {
    final result = await _members.updateOne(
      mongo.where.eq('email', oldEmail),
      mongo.modify.set('email', newEmail).set('updatedAt', DateTime.now().toIso8601String()),
    );
    return result.nModified > 0;
  }

  /// Update Preferences
  Future<bool> updatePreferences(Session session, {
    required String email,
    List<String>? dietStyle,
    List<String>? allergies,
    List<String>? dislikedIngredients,
  }) async {
    final modifier = mongo.modify.set('updatedAt', DateTime.now().toIso8601String());
    if (dietStyle != null) modifier.set('dietStyle', dietStyle);
    if (allergies != null) modifier.set('allergies', allergies);
    if (dislikedIngredients != null) modifier.set('dislikeIngredients', dislikedIngredients);

    final result = await _members.updateOne(mongo.where.eq('email', email), modifier);
    return result.isSuccess;
  }

  /// Update Food Style
  Future<bool> updateFoodStyle(Session session, {required String email, required List<String> foodStyle}) async {
    final result = await _members.updateOne(
      mongo.where.eq('email', email),
      mongo.modify.set('foodStyle', foodStyle).set('updatedAt', DateTime.now().toIso8601String()),
    );
    return result.isSuccess;
  }

  /// Update Spicy Heat
  Future<bool> updateSpicyHeat(Session session, {required String email, String? spice, String? heat}) async {
    final result = await _members.updateOne(
      mongo.where.eq('email', email),
      mongo.modify
        .set('spicyHeat', {'spice': spice, 'heat': heat})
        .set('updatedAt', DateTime.now().toIso8601String()),
    );
    return result.isSuccess;
  }

  /// Update Profile
  Future<bool> updateProfile(Session session, {
    required String email, 
    required String phone, 
    required String birthday, 
    required String gender
  }) async {
    final result = await _members.updateOne(
      mongo.where.eq('email', email),
      mongo.modify
        .set('profile', {'phone': phone, 'birth day': birthday, 'gender': gender})
        .set('updatedAt', DateTime.now().toIso8601String()),
    );
    return result.isSuccess;
  }

  /// Update Onboarding Preferences
  Future<bool> updateOnboardingPreferences(Session session, {
    required String email,
    List<String>? foodStyle,
    String? spiceLevel,
    String? heatLevel,
    List<String>? dietStyle,
    List<String>? allergies,
    List<String>? dislikeIngredients,
  }) async {
    final modifier = mongo.modify
      .set('updatedAt', DateTime.now().toIso8601String())
      .set('onboardingComplete', true);

    if (foodStyle != null) modifier.set('foodStyle', foodStyle);
    if (spiceLevel != null || heatLevel != null) {
      modifier.set('spicyHeat', {'spice': spiceLevel, 'heat': heatLevel});
    }
    if (dietStyle != null) modifier.set('dietStyle', dietStyle);
    if (allergies != null) modifier.set('allergies', allergies);
    if (dislikeIngredients != null) modifier.set('dislikeIngredients', dislikeIngredients);

    final result = await _members.updateOne(mongo.where.eq('email', email), modifier);
    return result.isSuccess;
  }

  /// Add Favorite Food to Folder
  Future<bool> addFavoriteFoodToFolder(Session session, {
    required String email, 
    required String foodId, 
    required String folderName
  }) async {
    // MongoDB dot notation to add to specific key in favoriteFoods map
    // 'favoriteFoods.folderName'
    // But folderName is dynamic.
    // We can't use dynamic key in dot notation easily if it contains dots etc.
    // Assuming folderName is safe or we handle it.
    // Actually safe way: read, modify, update.
    
    final member = await _members.findOne(mongo.where.eq('email', email));
    if (member == null) return false;
    
    // We need to fetch current favorites to ensure we add to "All Favorites" too
    // This logic is complex to do in one atomic update without aggregation pipeline
    // Let's do read-modify-write for simplicity as in Frontend service
    
    Map<String, dynamic> favs = member['favoriteFoods'] ?? {};
    if (favs is List) favs = {'All Favorites': favs}; // Migration
    
    List<dynamic> allFavs = List.from(favs['All Favorites'] ?? []);
    if (!allFavs.contains(foodId)) allFavs.add(foodId);
    favs['All Favorites'] = allFavs;
    
    List<dynamic> folderFavs = List.from(favs[folderName] ?? []);
    if (!folderFavs.contains(foodId)) folderFavs.add(foodId);
    favs[folderName] = folderFavs;
    
    final result = await _members.updateOne(
      mongo.where.eq('email', email),
      mongo.modify.set('favoriteFoods', favs).set('updatedAt', DateTime.now().toIso8601String())
    );
    return result.isSuccess;
  }

  /// Create Empty Collection
  Future<bool> createEmptyCollection(Session session, {required String email, required String folderName}) async {
    final member = await _members.findOne(mongo.where.eq('email', email));
    if (member == null) return false;
    
    Map<String, dynamic> favs = member['favoriteFoods'] ?? {};
    if (!favs.containsKey(folderName)) {
      favs[folderName] = [];
      final result = await _members.updateOne(
        mongo.where.eq('email', email),
        mongo.modify.set('favoriteFoods', favs).set('updatedAt', DateTime.now().toIso8601String())
      );
      return result.isSuccess;
    }
    return true;
  }


  Member _mapToMember(Map<String, dynamic> doc) {
    // Convert MongoDB doc to Serverpod Member model
    return Member(
      id: (doc['_id'] as mongo.ObjectId).hashCode, // Temporary int ID
      mongoId: doc['_id']?.toString(), // Real String ID
      
      name: doc['name'] ?? '',
      auth: jsonEncode(doc['auth']),
      email: doc['email'] ?? '',
      passwordHash: doc['passwordHash'],
      profileImage: doc['profileImage'],
      createdAt: DateTime.parse(doc['createdAt']),
      updatedAt: DateTime.parse(doc['updatedAt']),
      foodStyle: doc['foodStyle'] != null ? List<String>.from(doc['foodStyle']) : null,
      spicyHeat: doc['spicyHeat'] != null ? jsonEncode(doc['spicyHeat']) : null,
      favoriteFolders: doc['favoriteFoods'] != null ? jsonEncode(doc['favoriteFoods']) : null,
    );
  }
}
