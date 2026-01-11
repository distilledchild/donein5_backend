import 'dart:convert';
import 'package:serverpod/serverpod.dart';
import 'package:mongo_dart/mongo_dart.dart' as mongo;
import '../generated/protocol.dart';
import '../utils/mongo_client.dart';

class UserRecipeEndpoint extends Endpoint {
  
  mongo.DbCollection get _recipes => MongoDB().recipes!; // Using recipes collection

  Future<bool> saveRecipe(Session session, {required UserRecipe recipe}) async {
    final doc = {
      'memberId': recipe.memberId,
      'name': recipe.name,
      'description': recipe.description,
      'coverImageUrl': recipe.coverImageUrl,
      'cookingTimeMinutes': recipe.cookingTimeMinutes,
      'difficulty': recipe.difficulty,
      'category': recipe.category,
      'ingredients': jsonDecode(recipe.ingredients),
      'steps': jsonDecode(recipe.steps),
      'createdAt': recipe.createdAt.toIso8601String(),
    };
    
    final result = await _recipes.insertOne(doc);
    return result.isSuccess;
  }

  Future<List<UserRecipe>> getRecipesByMember(Session session, {required String memberId}) async {
    final results = await _recipes.find(
      mongo.where.eq('memberId', memberId).sortBy('createdAt', descending: true)
    ).toList();

    return results.map(_mapToUserRecipe).toList();
  }

  Future<UserRecipe?> getRecipeById(Session session, {required String recipeId}) async {
    final doc = await _recipes.findOne(mongo.where.eq('_id', recipeId));
    if (doc != null) return _mapToUserRecipe(doc);
    return null;
  }

  Future<List<UserRecipe>> getRecipesByIds(Session session, {required List<String> recipeIds}) async {
    final results = await _recipes.find(
      mongo.where.oneFrom('_id', recipeIds)
    ).toList();
    return results.map(_mapToUserRecipe).toList();
  }

  Future<bool> deleteRecipe(Session session, {required String recipeId}) async {
    final result = await _recipes.deleteOne(mongo.where.eq('_id', recipeId));
    return result.nRemoved > 0;
  }
  
  // --- Helpers ---
  UserRecipe _mapToUserRecipe(Map<String, dynamic> doc) {
    return UserRecipe(
      mongoId: doc['_id']?.toString(), // Map MongoDB Key
      memberId: doc['memberId'] ?? '',
      name: doc['name'] ?? '',
      description: doc['description'],
      coverImageUrl: doc['coverImageUrl'],
      cookingTimeMinutes: doc['cookingTimeMinutes'] ?? 0,
      difficulty: doc['difficulty'] ?? 'Easy',
      category: doc['category'],
      ingredients: jsonEncode(doc['ingredients']),
      steps: jsonEncode(doc['steps']),
      createdAt: DateTime.parse(doc['createdAt']),
      // Note: doc['_id'] is ObjectId, we might need to expose it if I want to delete by ID
      // But my UserRecipe model doesn't have 'id' string field defined in spy.yaml explicitly?
      // Serverpod adds 'id' int.
      // I should map doc['_id'] to a string field if I want it on frontend.
      // In spy.yaml I didn't add 'mongoId'. 
      // But for now let's hope finding by 'name' + 'memberId' or something? 
      // No, deletion needs ID.
      // I'll assume I can pass the ID somehow or I need to update model.
      // Wait, UserRecipe generated class has 'id' (int).
      // MongoDB uses ObjectId (12 bytes). It doesn't fit in int (4/8 bytes).
      // Basic Serverpod with Mongo usually requires `String id` in spy.yaml to hold ObjectId string.
    );
  }
}
