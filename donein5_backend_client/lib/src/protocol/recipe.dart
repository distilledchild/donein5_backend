/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: implementation_imports
// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: type_literal_in_constant_pattern
// ignore_for_file: use_super_parameters
// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;
import 'package:donein5_backend_client/src/protocol/protocol.dart' as _i2;

abstract class Recipe implements _i1.SerializableModel {
  Recipe._({
    this.id,
    required this.title,
    this.description,
    this.imageUrl,
    this.cookingTime,
    this.servings,
    required this.ingredients,
    required this.instructions,
    required this.createdAt,
  });

  factory Recipe({
    int? id,
    required String title,
    String? description,
    String? imageUrl,
    int? cookingTime,
    int? servings,
    required List<String> ingredients,
    required List<String> instructions,
    required DateTime createdAt,
  }) = _RecipeImpl;

  factory Recipe.fromJson(Map<String, dynamic> jsonSerialization) {
    return Recipe(
      id: jsonSerialization['id'] as int?,
      title: jsonSerialization['title'] as String,
      description: jsonSerialization['description'] as String?,
      imageUrl: jsonSerialization['imageUrl'] as String?,
      cookingTime: jsonSerialization['cookingTime'] as int?,
      servings: jsonSerialization['servings'] as int?,
      ingredients: _i2.Protocol().deserialize<List<String>>(
        jsonSerialization['ingredients'],
      ),
      instructions: _i2.Protocol().deserialize<List<String>>(
        jsonSerialization['instructions'],
      ),
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String title;

  String? description;

  String? imageUrl;

  int? cookingTime;

  int? servings;

  List<String> ingredients;

  List<String> instructions;

  DateTime createdAt;

  /// Returns a shallow copy of this [Recipe]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Recipe copyWith({
    int? id,
    String? title,
    String? description,
    String? imageUrl,
    int? cookingTime,
    int? servings,
    List<String>? ingredients,
    List<String>? instructions,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Recipe',
      if (id != null) 'id': id,
      'title': title,
      if (description != null) 'description': description,
      if (imageUrl != null) 'imageUrl': imageUrl,
      if (cookingTime != null) 'cookingTime': cookingTime,
      if (servings != null) 'servings': servings,
      'ingredients': ingredients.toJson(),
      'instructions': instructions.toJson(),
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _RecipeImpl extends Recipe {
  _RecipeImpl({
    int? id,
    required String title,
    String? description,
    String? imageUrl,
    int? cookingTime,
    int? servings,
    required List<String> ingredients,
    required List<String> instructions,
    required DateTime createdAt,
  }) : super._(
         id: id,
         title: title,
         description: description,
         imageUrl: imageUrl,
         cookingTime: cookingTime,
         servings: servings,
         ingredients: ingredients,
         instructions: instructions,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [Recipe]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Recipe copyWith({
    Object? id = _Undefined,
    String? title,
    Object? description = _Undefined,
    Object? imageUrl = _Undefined,
    Object? cookingTime = _Undefined,
    Object? servings = _Undefined,
    List<String>? ingredients,
    List<String>? instructions,
    DateTime? createdAt,
  }) {
    return Recipe(
      id: id is int? ? id : this.id,
      title: title ?? this.title,
      description: description is String? ? description : this.description,
      imageUrl: imageUrl is String? ? imageUrl : this.imageUrl,
      cookingTime: cookingTime is int? ? cookingTime : this.cookingTime,
      servings: servings is int? ? servings : this.servings,
      ingredients: ingredients ?? this.ingredients.map((e0) => e0).toList(),
      instructions: instructions ?? this.instructions.map((e0) => e0).toList(),
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
