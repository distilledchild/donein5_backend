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

abstract class UserRecipe
    implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = UserRecipeTable();

  static const db = UserRecipeRepository._();

  @override
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

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static UserRecipeInclude include() {
    return UserRecipeInclude._();
  }

  static UserRecipeIncludeList includeList({
    _i1.WhereExpressionBuilder<UserRecipeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserRecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserRecipeTable>? orderByList,
    UserRecipeInclude? include,
  }) {
    return UserRecipeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserRecipe.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(UserRecipe.t),
      include: include,
    );
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

class UserRecipeUpdateTable extends _i1.UpdateTable<UserRecipeTable> {
  UserRecipeUpdateTable(super.table);

  _i1.ColumnValue<String, String> mongoId(String? value) => _i1.ColumnValue(
    table.mongoId,
    value,
  );

  _i1.ColumnValue<String, String> memberId(String value) => _i1.ColumnValue(
    table.memberId,
    value,
  );

  _i1.ColumnValue<String, String> name(String value) => _i1.ColumnValue(
    table.name,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> coverImageUrl(String? value) =>
      _i1.ColumnValue(
        table.coverImageUrl,
        value,
      );

  _i1.ColumnValue<int, int> cookingTimeMinutes(int value) => _i1.ColumnValue(
    table.cookingTimeMinutes,
    value,
  );

  _i1.ColumnValue<String, String> difficulty(String value) => _i1.ColumnValue(
    table.difficulty,
    value,
  );

  _i1.ColumnValue<String, String> category(String? value) => _i1.ColumnValue(
    table.category,
    value,
  );

  _i1.ColumnValue<String, String> ingredients(String value) => _i1.ColumnValue(
    table.ingredients,
    value,
  );

  _i1.ColumnValue<String, String> steps(String value) => _i1.ColumnValue(
    table.steps,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class UserRecipeTable extends _i1.Table<int?> {
  UserRecipeTable({super.tableRelation}) : super(tableName: 'user_recipe') {
    updateTable = UserRecipeUpdateTable(this);
    mongoId = _i1.ColumnString(
      'mongoId',
      this,
    );
    memberId = _i1.ColumnString(
      'memberId',
      this,
    );
    name = _i1.ColumnString(
      'name',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    coverImageUrl = _i1.ColumnString(
      'coverImageUrl',
      this,
    );
    cookingTimeMinutes = _i1.ColumnInt(
      'cookingTimeMinutes',
      this,
    );
    difficulty = _i1.ColumnString(
      'difficulty',
      this,
    );
    category = _i1.ColumnString(
      'category',
      this,
    );
    ingredients = _i1.ColumnString(
      'ingredients',
      this,
    );
    steps = _i1.ColumnString(
      'steps',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final UserRecipeUpdateTable updateTable;

  late final _i1.ColumnString mongoId;

  late final _i1.ColumnString memberId;

  late final _i1.ColumnString name;

  late final _i1.ColumnString description;

  late final _i1.ColumnString coverImageUrl;

  late final _i1.ColumnInt cookingTimeMinutes;

  late final _i1.ColumnString difficulty;

  late final _i1.ColumnString category;

  late final _i1.ColumnString ingredients;

  late final _i1.ColumnString steps;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    mongoId,
    memberId,
    name,
    description,
    coverImageUrl,
    cookingTimeMinutes,
    difficulty,
    category,
    ingredients,
    steps,
    createdAt,
  ];
}

class UserRecipeInclude extends _i1.IncludeObject {
  UserRecipeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => UserRecipe.t;
}

class UserRecipeIncludeList extends _i1.IncludeList {
  UserRecipeIncludeList._({
    _i1.WhereExpressionBuilder<UserRecipeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(UserRecipe.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => UserRecipe.t;
}

class UserRecipeRepository {
  const UserRecipeRepository._();

  /// Returns a list of [UserRecipe]s matching the given query parameters.
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
  Future<List<UserRecipe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserRecipeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserRecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserRecipeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<UserRecipe>(
      where: where?.call(UserRecipe.t),
      orderBy: orderBy?.call(UserRecipe.t),
      orderByList: orderByList?.call(UserRecipe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [UserRecipe] matching the given query parameters.
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
  Future<UserRecipe?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserRecipeTable>? where,
    int? offset,
    _i1.OrderByBuilder<UserRecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<UserRecipeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<UserRecipe>(
      where: where?.call(UserRecipe.t),
      orderBy: orderBy?.call(UserRecipe.t),
      orderByList: orderByList?.call(UserRecipe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [UserRecipe] by its [id] or null if no such row exists.
  Future<UserRecipe?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<UserRecipe>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [UserRecipe]s in the list and returns the inserted rows.
  ///
  /// The returned [UserRecipe]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<UserRecipe>> insert(
    _i1.Session session,
    List<UserRecipe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<UserRecipe>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [UserRecipe] and returns the inserted row.
  ///
  /// The returned [UserRecipe] will have its `id` field set.
  Future<UserRecipe> insertRow(
    _i1.Session session,
    UserRecipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<UserRecipe>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [UserRecipe]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<UserRecipe>> update(
    _i1.Session session,
    List<UserRecipe> rows, {
    _i1.ColumnSelections<UserRecipeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<UserRecipe>(
      rows,
      columns: columns?.call(UserRecipe.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserRecipe]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<UserRecipe> updateRow(
    _i1.Session session,
    UserRecipe row, {
    _i1.ColumnSelections<UserRecipeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<UserRecipe>(
      row,
      columns: columns?.call(UserRecipe.t),
      transaction: transaction,
    );
  }

  /// Updates a single [UserRecipe] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<UserRecipe?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<UserRecipeUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<UserRecipe>(
      id,
      columnValues: columnValues(UserRecipe.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [UserRecipe]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<UserRecipe>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<UserRecipeUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<UserRecipeTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<UserRecipeTable>? orderBy,
    _i1.OrderByListBuilder<UserRecipeTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<UserRecipe>(
      columnValues: columnValues(UserRecipe.t.updateTable),
      where: where(UserRecipe.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(UserRecipe.t),
      orderByList: orderByList?.call(UserRecipe.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [UserRecipe]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<UserRecipe>> delete(
    _i1.Session session,
    List<UserRecipe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<UserRecipe>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [UserRecipe].
  Future<UserRecipe> deleteRow(
    _i1.Session session,
    UserRecipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<UserRecipe>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<UserRecipe>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<UserRecipeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<UserRecipe>(
      where: where(UserRecipe.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<UserRecipeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<UserRecipe>(
      where: where?.call(UserRecipe.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
