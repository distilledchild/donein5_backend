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

abstract class UserRecipe implements _i1.SerializableModel {
  UserRecipe._({
    this.id,
    this.mongoId,
    required this.memberId,
    required this.name,
    this.description,
    this.coverImageUrl,
    required this.cookingTimeMinutes,
    required this.difficulty,
    this.category,
    required this.ingredients,
    required this.steps,
    required this.createdAt,
  });

  factory UserRecipe({
    int? id,
    String? mongoId,
    required String memberId,
    required String name,
    String? description,
    String? coverImageUrl,
    required int cookingTimeMinutes,
    required String difficulty,
    String? category,
    required String ingredients,
    required String steps,
    required DateTime createdAt,
  }) = _UserRecipeImpl;

  factory UserRecipe.fromJson(Map<String, dynamic> jsonSerialization) {
    return UserRecipe(
      id: jsonSerialization['id'] as int?,
      mongoId: jsonSerialization['mongoId'] as String?,
      memberId: jsonSerialization['memberId'] as String,
      name: jsonSerialization['name'] as String,
      description: jsonSerialization['description'] as String?,
      coverImageUrl: jsonSerialization['coverImageUrl'] as String?,
      cookingTimeMinutes: jsonSerialization['cookingTimeMinutes'] as int,
      difficulty: jsonSerialization['difficulty'] as String,
      category: jsonSerialization['category'] as String?,
      ingredients: jsonSerialization['ingredients'] as String,
      steps: jsonSerialization['steps'] as String,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? mongoId;

  String memberId;

  String name;

  String? description;

  String? coverImageUrl;

  int cookingTimeMinutes;

  String difficulty;

  String? category;

  String ingredients;

  String steps;

  DateTime createdAt;

  /// Returns a shallow copy of this [UserRecipe]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  UserRecipe copyWith({
    int? id,
    String? mongoId,
    String? memberId,
    String? name,
    String? description,
    String? coverImageUrl,
    int? cookingTimeMinutes,
    String? difficulty,
    String? category,
    String? ingredients,
    String? steps,
    DateTime? createdAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'UserRecipe',
      if (id != null) 'id': id,
      if (mongoId != null) 'mongoId': mongoId,
      'memberId': memberId,
      'name': name,
      if (description != null) 'description': description,
      if (coverImageUrl != null) 'coverImageUrl': coverImageUrl,
      'cookingTimeMinutes': cookingTimeMinutes,
      'difficulty': difficulty,
      if (category != null) 'category': category,
      'ingredients': ingredients,
      'steps': steps,
      'createdAt': createdAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _UserRecipeImpl extends UserRecipe {
  _UserRecipeImpl({
    int? id,
    String? mongoId,
    required String memberId,
    required String name,
    String? description,
    String? coverImageUrl,
    required int cookingTimeMinutes,
    required String difficulty,
    String? category,
    required String ingredients,
    required String steps,
    required DateTime createdAt,
  }) : super._(
         id: id,
         mongoId: mongoId,
         memberId: memberId,
         name: name,
         description: description,
         coverImageUrl: coverImageUrl,
         cookingTimeMinutes: cookingTimeMinutes,
         difficulty: difficulty,
         category: category,
         ingredients: ingredients,
         steps: steps,
         createdAt: createdAt,
       );

  /// Returns a shallow copy of this [UserRecipe]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  UserRecipe copyWith({
    Object? id = _Undefined,
    Object? mongoId = _Undefined,
    String? memberId,
    String? name,
    Object? description = _Undefined,
    Object? coverImageUrl = _Undefined,
    int? cookingTimeMinutes,
    String? difficulty,
    Object? category = _Undefined,
    String? ingredients,
    String? steps,
    DateTime? createdAt,
  }) {
    return UserRecipe(
      id: id is int? ? id : this.id,
      mongoId: mongoId is String? ? mongoId : this.mongoId,
      memberId: memberId ?? this.memberId,
      name: name ?? this.name,
      description: description is String? ? description : this.description,
      coverImageUrl: coverImageUrl is String?
          ? coverImageUrl
          : this.coverImageUrl,
      cookingTimeMinutes: cookingTimeMinutes ?? this.cookingTimeMinutes,
      difficulty: difficulty ?? this.difficulty,
      category: category is String? ? category : this.category,
      ingredients: ingredients ?? this.ingredients,
      steps: steps ?? this.steps,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}
