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

abstract class Member implements _i1.SerializableModel {
  Member._({
    this.id,
    this.mongoId,
    required this.name,
    required this.auth,
    required this.email,
    this.passwordHash,
    this.profileImage,
    this.foodStyle,
    this.spicyHeat,
    this.dietStyle,
    this.allergies,
    this.dislikeIngredients,
    this.profile,
    this.favoriteFolders,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Member({
    int? id,
    String? mongoId,
    required String name,
    required String auth,
    required String email,
    String? passwordHash,
    String? profileImage,
    List<String>? foodStyle,
    String? spicyHeat,
    List<String>? dietStyle,
    List<String>? allergies,
    List<String>? dislikeIngredients,
    String? profile,
    String? favoriteFolders,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _MemberImpl;

  factory Member.fromJson(Map<String, dynamic> jsonSerialization) {
    return Member(
      id: jsonSerialization['id'] as int?,
      mongoId: jsonSerialization['mongoId'] as String?,
      name: jsonSerialization['name'] as String,
      auth: jsonSerialization['auth'] as String,
      email: jsonSerialization['email'] as String,
      passwordHash: jsonSerialization['passwordHash'] as String?,
      profileImage: jsonSerialization['profileImage'] as String?,
      foodStyle: jsonSerialization['foodStyle'] == null
          ? null
          : _i2.Protocol().deserialize<List<String>>(
              jsonSerialization['foodStyle'],
            ),
      spicyHeat: jsonSerialization['spicyHeat'] as String?,
      dietStyle: jsonSerialization['dietStyle'] == null
          ? null
          : _i2.Protocol().deserialize<List<String>>(
              jsonSerialization['dietStyle'],
            ),
      allergies: jsonSerialization['allergies'] == null
          ? null
          : _i2.Protocol().deserialize<List<String>>(
              jsonSerialization['allergies'],
            ),
      dislikeIngredients: jsonSerialization['dislikeIngredients'] == null
          ? null
          : _i2.Protocol().deserialize<List<String>>(
              jsonSerialization['dislikeIngredients'],
            ),
      profile: jsonSerialization['profile'] as String?,
      favoriteFolders: jsonSerialization['favoriteFolders'] as String?,
      createdAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['createdAt'],
      ),
      updatedAt: _i1.DateTimeJsonExtension.fromJson(
        jsonSerialization['updatedAt'],
      ),
    );
  }

  /// The database id, set if the object has been inserted into the
  /// database or if it has been fetched from the database. Otherwise,
  /// the id will be null.
  int? id;

  String? mongoId;

  String name;

  String auth;

  String email;

  String? passwordHash;

  String? profileImage;

  List<String>? foodStyle;

  String? spicyHeat;

  List<String>? dietStyle;

  List<String>? allergies;

  List<String>? dislikeIngredients;

  String? profile;

  String? favoriteFolders;

  DateTime createdAt;

  DateTime updatedAt;

  /// Returns a shallow copy of this [Member]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  Member copyWith({
    int? id,
    String? mongoId,
    String? name,
    String? auth,
    String? email,
    String? passwordHash,
    String? profileImage,
    List<String>? foodStyle,
    String? spicyHeat,
    List<String>? dietStyle,
    List<String>? allergies,
    List<String>? dislikeIngredients,
    String? profile,
    String? favoriteFolders,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
  @override
  Map<String, dynamic> toJson() {
    return {
      '__className__': 'Member',
      if (id != null) 'id': id,
      if (mongoId != null) 'mongoId': mongoId,
      'name': name,
      'auth': auth,
      'email': email,
      if (passwordHash != null) 'passwordHash': passwordHash,
      if (profileImage != null) 'profileImage': profileImage,
      if (foodStyle != null) 'foodStyle': foodStyle?.toJson(),
      if (spicyHeat != null) 'spicyHeat': spicyHeat,
      if (dietStyle != null) 'dietStyle': dietStyle?.toJson(),
      if (allergies != null) 'allergies': allergies?.toJson(),
      if (dislikeIngredients != null)
        'dislikeIngredients': dislikeIngredients?.toJson(),
      if (profile != null) 'profile': profile,
      if (favoriteFolders != null) 'favoriteFolders': favoriteFolders,
      'createdAt': createdAt.toJson(),
      'updatedAt': updatedAt.toJson(),
    };
  }

  @override
  String toString() {
    return _i1.SerializationManager.encode(this);
  }
}

class _Undefined {}

class _MemberImpl extends Member {
  _MemberImpl({
    int? id,
    String? mongoId,
    required String name,
    required String auth,
    required String email,
    String? passwordHash,
    String? profileImage,
    List<String>? foodStyle,
    String? spicyHeat,
    List<String>? dietStyle,
    List<String>? allergies,
    List<String>? dislikeIngredients,
    String? profile,
    String? favoriteFolders,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) : super._(
         id: id,
         mongoId: mongoId,
         name: name,
         auth: auth,
         email: email,
         passwordHash: passwordHash,
         profileImage: profileImage,
         foodStyle: foodStyle,
         spicyHeat: spicyHeat,
         dietStyle: dietStyle,
         allergies: allergies,
         dislikeIngredients: dislikeIngredients,
         profile: profile,
         favoriteFolders: favoriteFolders,
         createdAt: createdAt,
         updatedAt: updatedAt,
       );

  /// Returns a shallow copy of this [Member]
  /// with some or all fields replaced by the given arguments.
  @_i1.useResult
  @override
  Member copyWith({
    Object? id = _Undefined,
    Object? mongoId = _Undefined,
    String? name,
    String? auth,
    String? email,
    Object? passwordHash = _Undefined,
    Object? profileImage = _Undefined,
    Object? foodStyle = _Undefined,
    Object? spicyHeat = _Undefined,
    Object? dietStyle = _Undefined,
    Object? allergies = _Undefined,
    Object? dislikeIngredients = _Undefined,
    Object? profile = _Undefined,
    Object? favoriteFolders = _Undefined,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Member(
      id: id is int? ? id : this.id,
      mongoId: mongoId is String? ? mongoId : this.mongoId,
      name: name ?? this.name,
      auth: auth ?? this.auth,
      email: email ?? this.email,
      passwordHash: passwordHash is String? ? passwordHash : this.passwordHash,
      profileImage: profileImage is String? ? profileImage : this.profileImage,
      foodStyle: foodStyle is List<String>?
          ? foodStyle
          : this.foodStyle?.map((e0) => e0).toList(),
      spicyHeat: spicyHeat is String? ? spicyHeat : this.spicyHeat,
      dietStyle: dietStyle is List<String>?
          ? dietStyle
          : this.dietStyle?.map((e0) => e0).toList(),
      allergies: allergies is List<String>?
          ? allergies
          : this.allergies?.map((e0) => e0).toList(),
      dislikeIngredients: dislikeIngredients is List<String>?
          ? dislikeIngredients
          : this.dislikeIngredients?.map((e0) => e0).toList(),
      profile: profile is String? ? profile : this.profile,
      favoriteFolders: favoriteFolders is String?
          ? favoriteFolders
          : this.favoriteFolders,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
