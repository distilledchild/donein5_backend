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
import 'package:serverpod/serverpod.dart' as _i1;
import 'package:donein5_backend_server/src/generated/protocol.dart' as _i2;

abstract class Member implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = MemberTable();

  static const db = MemberRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static MemberInclude include() {
    return MemberInclude._();
  }

  static MemberIncludeList includeList({
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MemberTable>? orderByList,
    MemberInclude? include,
  }) {
    return MemberIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Member.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Member.t),
      include: include,
    );
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

class MemberUpdateTable extends _i1.UpdateTable<MemberTable> {
  MemberUpdateTable(super.table);

  _i1.ColumnValue<String, String> mongoId(String? value) => _i1.ColumnValue(
    table.mongoId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> auth(String value) => _i1.ColumnValue(
    table.auth,
    value,
  );

  _i1.ColumnValue<String, String> email(String value) => _i1.ColumnValue(
    table.email,
    value,
  );

  _i1.ColumnValue<String, String> passwordHash(String? value) =>
      _i1.ColumnValue(
        table.passwordHash,
        value,
      );

  _i1.ColumnValue<String, String> profileImage(String? value) =>
      _i1.ColumnValue(
        table.profileImage,
        value,
      );

  _i1.ColumnValue<List<String>, List<String>> foodStyle(List<String>? value) =>
      _i1.ColumnValue(
        table.foodStyle,
        value,
      );

  _i1.ColumnValue<String, String> spicyHeat(String? value) => _i1.ColumnValue(
    table.spicyHeat,
    value,
  );

  _i1.ColumnValue<List<String>, List<String>> dietStyle(List<String>? value) =>
      _i1.ColumnValue(
        table.dietStyle,
        value,
      );

  _i1.ColumnValue<List<String>, List<String>> allergies(List<String>? value) =>
      _i1.ColumnValue(
        table.allergies,
        value,
      );

  _i1.ColumnValue<List<String>, List<String>> dislikeIngredients(
    List<String>? value,
  ) => _i1.ColumnValue(
    table.dislikeIngredients,
    value,
  );

  _i1.ColumnValue<String, String> profile(String? value) => _i1.ColumnValue(
    table.profile,
    value,
  );

  _i1.ColumnValue<String, String> favoriteFolders(String? value) =>
      _i1.ColumnValue(
        table.favoriteFolders,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );

  _i1.ColumnValue<DateTime, DateTime> updatedAt(DateTime value) =>
      _i1.ColumnValue(
        table.updatedAt,
        value,
      );
}

class MemberTable extends _i1.Table<int?> {
  MemberTable({super.tableRelation}) : super(tableName: 'member') {
    updateTable = MemberUpdateTable(this);
    mongoId = _i1.ColumnString(
      'mongoId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    auth = _i1.ColumnString(
      'auth',
      this,
    );
    email = _i1.ColumnString(
      'email',
      this,
    );
    passwordHash = _i1.ColumnString(
      'passwordHash',
      this,
    );
    profileImage = _i1.ColumnString(
      'profileImage',
      this,
    );
    foodStyle = _i1.ColumnSerializable<List<String>>(
      'foodStyle',
      this,
    );
    spicyHeat = _i1.ColumnString(
      'spicyHeat',
      this,
    );
    dietStyle = _i1.ColumnSerializable<List<String>>(
      'dietStyle',
      this,
    );
    allergies = _i1.ColumnSerializable<List<String>>(
      'allergies',
      this,
    );
    dislikeIngredients = _i1.ColumnSerializable<List<String>>(
      'dislikeIngredients',
      this,
    );
    profile = _i1.ColumnString(
      'profile',
      this,
    );
    favoriteFolders = _i1.ColumnString(
      'favoriteFolders',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
    updatedAt = _i1.ColumnDateTime(
      'updatedAt',
      this,
    );
  }

  late final MemberUpdateTable updateTable;

  late final _i1.ColumnString mongoId;

  late final _i1.ColumnString name;

  late final _i1.ColumnString auth;

  late final _i1.ColumnString email;

  late final _i1.ColumnString passwordHash;

  late final _i1.ColumnString profileImage;

  late final _i1.ColumnSerializable<List<String>> foodStyle;

  late final _i1.ColumnString spicyHeat;

  late final _i1.ColumnSerializable<List<String>> dietStyle;

  late final _i1.ColumnSerializable<List<String>> allergies;

  late final _i1.ColumnSerializable<List<String>> dislikeIngredients;

  late final _i1.ColumnString profile;

  late final _i1.ColumnString favoriteFolders;

  late final _i1.ColumnDateTime createdAt;

  late final _i1.ColumnDateTime updatedAt;

  @override
  List<_i1.Column> get columns => [
    id,
    mongoId,
    name,
    auth,
    email,
    passwordHash,
    profileImage,
    foodStyle,
    spicyHeat,
    dietStyle,
    allergies,
    dislikeIngredients,
    profile,
    favoriteFolders,
    createdAt,
    updatedAt,
  ];
}

class MemberInclude extends _i1.IncludeObject {
  MemberInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Member.t;
}

class MemberIncludeList extends _i1.IncludeList {
  MemberIncludeList._({
    _i1.WhereExpressionBuilder<MemberTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Member.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Member.t;
}

class MemberRepository {
  const MemberRepository._();

  /// Returns a list of [Member]s matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order of the items use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// The maximum number of items can be set by [limit]. If no limit is set,
  /// all items matching the query will be returned.
  ///
  /// [offset] defines how many items to skip, after which [limit] (or all)
  /// items are read from the database.
  ///
  /// ```dart
  /// var persons = await Persons.db.find(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.firstName,
  ///   limit: 100,
  /// );
  /// ```
  Future<List<Member>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MemberTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Member>(
      where: where?.call(Member.t),
      orderBy: orderBy?.call(Member.t),
      orderByList: orderByList?.call(Member.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Member] matching the given query parameters.
  ///
  /// Use [where] to specify which items to include in the return value.
  /// If none is specified, all items will be returned.
  ///
  /// To specify the order use [orderBy] or [orderByList]
  /// when sorting by multiple columns.
  ///
  /// [offset] defines how many items to skip, after which the next one will be picked.
  ///
  /// ```dart
  /// var youngestPerson = await Persons.db.findFirstRow(
  ///   session,
  ///   where: (t) => t.lastName.equals('Jones'),
  ///   orderBy: (t) => t.age,
  /// );
  /// ```
  Future<Member?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? offset,
    _i1.OrderByBuilder<MemberTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<MemberTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Member>(
      where: where?.call(Member.t),
      orderBy: orderBy?.call(Member.t),
      orderByList: orderByList?.call(Member.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Member] by its [id] or null if no such row exists.
  Future<Member?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Member>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Member]s in the list and returns the inserted rows.
  ///
  /// The returned [Member]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Member>> insert(
    _i1.Session session,
    List<Member> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Member>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Member] and returns the inserted row.
  ///
  /// The returned [Member] will have its `id` field set.
  Future<Member> insertRow(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Member>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Member]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Member>> update(
    _i1.Session session,
    List<Member> rows, {
    _i1.ColumnSelections<MemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Member>(
      rows,
      columns: columns?.call(Member.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Member]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Member> updateRow(
    _i1.Session session,
    Member row, {
    _i1.ColumnSelections<MemberTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Member>(
      row,
      columns: columns?.call(Member.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Member] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Member?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<MemberUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Member>(
      id,
      columnValues: columnValues(Member.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Member]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Member>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<MemberUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<MemberTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<MemberTable>? orderBy,
    _i1.OrderByListBuilder<MemberTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Member>(
      columnValues: columnValues(Member.t.updateTable),
      where: where(Member.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Member.t),
      orderByList: orderByList?.call(Member.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Member]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Member>> delete(
    _i1.Session session,
    List<Member> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Member>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Member].
  Future<Member> deleteRow(
    _i1.Session session,
    Member row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Member>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Member>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<MemberTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Member>(
      where: where(Member.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<MemberTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Member>(
      where: where?.call(Member.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
