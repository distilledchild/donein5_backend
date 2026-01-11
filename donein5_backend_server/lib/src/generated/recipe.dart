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

abstract class Recipe implements _i1.TableRow<int?>, _i1.ProtocolSerialization {
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

  static final t = RecipeTable();

  static const db = RecipeRepository._();

  @override
  int? id;

  String title;

  String? description;

  String? imageUrl;

  int? cookingTime;

  int? servings;

  List<String> ingredients;

  List<String> instructions;

  DateTime createdAt;

  @override
  _i1.Table<int?> get table => t;

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
  Map<String, dynamic> toJsonForProtocol() {
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

  static RecipeInclude include() {
    return RecipeInclude._();
  }

  static RecipeIncludeList includeList({
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecipeTable>? orderByList,
    RecipeInclude? include,
  }) {
    return RecipeIncludeList._(
      where: where,
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Recipe.t),
      orderDescending: orderDescending,
      orderByList: orderByList?.call(Recipe.t),
      include: include,
    );
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

class RecipeUpdateTable extends _i1.UpdateTable<RecipeTable> {
  RecipeUpdateTable(super.table);

  _i1.ColumnValue<String, String> title(String value) => _i1.ColumnValue(
    table.title,
    value,
  );

  _i1.ColumnValue<String, String> description(String? value) => _i1.ColumnValue(
    table.description,
    value,
  );

  _i1.ColumnValue<String, String> imageUrl(String? value) => _i1.ColumnValue(
    table.imageUrl,
    value,
  );

  _i1.ColumnValue<int, int> cookingTime(int? value) => _i1.ColumnValue(
    table.cookingTime,
    value,
  );

  _i1.ColumnValue<int, int> servings(int? value) => _i1.ColumnValue(
    table.servings,
    value,
  );

  _i1.ColumnValue<List<String>, List<String>> ingredients(List<String> value) =>
      _i1.ColumnValue(
        table.ingredients,
        value,
      );

  _i1.ColumnValue<List<String>, List<String>> instructions(
    List<String> value,
  ) => _i1.ColumnValue(
    table.instructions,
    value,
  );

  _i1.ColumnValue<DateTime, DateTime> createdAt(DateTime value) =>
      _i1.ColumnValue(
        table.createdAt,
        value,
      );
}

class RecipeTable extends _i1.Table<int?> {
  RecipeTable({super.tableRelation}) : super(tableName: 'recipe') {
    updateTable = RecipeUpdateTable(this);
    title = _i1.ColumnString(
      'title',
      this,
    );
    description = _i1.ColumnString(
      'description',
      this,
    );
    imageUrl = _i1.ColumnString(
      'imageUrl',
      this,
    );
    cookingTime = _i1.ColumnInt(
      'cookingTime',
      this,
    );
    servings = _i1.ColumnInt(
      'servings',
      this,
    );
    ingredients = _i1.ColumnSerializable<List<String>>(
      'ingredients',
      this,
    );
    instructions = _i1.ColumnSerializable<List<String>>(
      'instructions',
      this,
    );
    createdAt = _i1.ColumnDateTime(
      'createdAt',
      this,
    );
  }

  late final RecipeUpdateTable updateTable;

  late final _i1.ColumnString title;

  late final _i1.ColumnString description;

  late final _i1.ColumnString imageUrl;

  late final _i1.ColumnInt cookingTime;

  late final _i1.ColumnInt servings;

  late final _i1.ColumnSerializable<List<String>> ingredients;

  late final _i1.ColumnSerializable<List<String>> instructions;

  late final _i1.ColumnDateTime createdAt;

  @override
  List<_i1.Column> get columns => [
    id,
    title,
    description,
    imageUrl,
    cookingTime,
    servings,
    ingredients,
    instructions,
    createdAt,
  ];
}

class RecipeInclude extends _i1.IncludeObject {
  RecipeInclude._();

  @override
  Map<String, _i1.Include?> get includes => {};

  @override
  _i1.Table<int?> get table => Recipe.t;
}

class RecipeIncludeList extends _i1.IncludeList {
  RecipeIncludeList._({
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    super.limit,
    super.offset,
    super.orderBy,
    super.orderDescending,
    super.orderByList,
    super.include,
  }) {
    super.where = where?.call(Recipe.t);
  }

  @override
  Map<String, _i1.Include?> get includes => include?.includes ?? {};

  @override
  _i1.Table<int?> get table => Recipe.t;
}

class RecipeRepository {
  const RecipeRepository._();

  /// Returns a list of [Recipe]s matching the given query parameters.
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
  Future<List<Recipe>> find(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecipeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.find<Recipe>(
      where: where?.call(Recipe.t),
      orderBy: orderBy?.call(Recipe.t),
      orderByList: orderByList?.call(Recipe.t),
      orderDescending: orderDescending,
      limit: limit,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Returns the first matching [Recipe] matching the given query parameters.
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
  Future<Recipe?> findFirstRow(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? offset,
    _i1.OrderByBuilder<RecipeTable>? orderBy,
    bool orderDescending = false,
    _i1.OrderByListBuilder<RecipeTable>? orderByList,
    _i1.Transaction? transaction,
  }) async {
    return session.db.findFirstRow<Recipe>(
      where: where?.call(Recipe.t),
      orderBy: orderBy?.call(Recipe.t),
      orderByList: orderByList?.call(Recipe.t),
      orderDescending: orderDescending,
      offset: offset,
      transaction: transaction,
    );
  }

  /// Finds a single [Recipe] by its [id] or null if no such row exists.
  Future<Recipe?> findById(
    _i1.Session session,
    int id, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.findById<Recipe>(
      id,
      transaction: transaction,
    );
  }

  /// Inserts all [Recipe]s in the list and returns the inserted rows.
  ///
  /// The returned [Recipe]s will have their `id` fields set.
  ///
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// insert, none of the rows will be inserted.
  Future<List<Recipe>> insert(
    _i1.Session session,
    List<Recipe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insert<Recipe>(
      rows,
      transaction: transaction,
    );
  }

  /// Inserts a single [Recipe] and returns the inserted row.
  ///
  /// The returned [Recipe] will have its `id` field set.
  Future<Recipe> insertRow(
    _i1.Session session,
    Recipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.insertRow<Recipe>(
      row,
      transaction: transaction,
    );
  }

  /// Updates all [Recipe]s in the list and returns the updated rows. If
  /// [columns] is provided, only those columns will be updated. Defaults to
  /// all columns.
  /// This is an atomic operation, meaning that if one of the rows fails to
  /// update, none of the rows will be updated.
  Future<List<Recipe>> update(
    _i1.Session session,
    List<Recipe> rows, {
    _i1.ColumnSelections<RecipeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.update<Recipe>(
      rows,
      columns: columns?.call(Recipe.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Recipe]. The row needs to have its id set.
  /// Optionally, a list of [columns] can be provided to only update those
  /// columns. Defaults to all columns.
  Future<Recipe> updateRow(
    _i1.Session session,
    Recipe row, {
    _i1.ColumnSelections<RecipeTable>? columns,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateRow<Recipe>(
      row,
      columns: columns?.call(Recipe.t),
      transaction: transaction,
    );
  }

  /// Updates a single [Recipe] by its [id] with the specified [columnValues].
  /// Returns the updated row or null if no row with the given id exists.
  Future<Recipe?> updateById(
    _i1.Session session,
    int id, {
    required _i1.ColumnValueListBuilder<RecipeUpdateTable> columnValues,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateById<Recipe>(
      id,
      columnValues: columnValues(Recipe.t.updateTable),
      transaction: transaction,
    );
  }

  /// Updates all [Recipe]s matching the [where] expression with the specified [columnValues].
  /// Returns the list of updated rows.
  Future<List<Recipe>> updateWhere(
    _i1.Session session, {
    required _i1.ColumnValueListBuilder<RecipeUpdateTable> columnValues,
    required _i1.WhereExpressionBuilder<RecipeTable> where,
    int? limit,
    int? offset,
    _i1.OrderByBuilder<RecipeTable>? orderBy,
    _i1.OrderByListBuilder<RecipeTable>? orderByList,
    bool orderDescending = false,
    _i1.Transaction? transaction,
  }) async {
    return session.db.updateWhere<Recipe>(
      columnValues: columnValues(Recipe.t.updateTable),
      where: where(Recipe.t),
      limit: limit,
      offset: offset,
      orderBy: orderBy?.call(Recipe.t),
      orderByList: orderByList?.call(Recipe.t),
      orderDescending: orderDescending,
      transaction: transaction,
    );
  }

  /// Deletes all [Recipe]s in the list and returns the deleted rows.
  /// This is an atomic operation, meaning that if one of the rows fail to
  /// be deleted, none of the rows will be deleted.
  Future<List<Recipe>> delete(
    _i1.Session session,
    List<Recipe> rows, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.delete<Recipe>(
      rows,
      transaction: transaction,
    );
  }

  /// Deletes a single [Recipe].
  Future<Recipe> deleteRow(
    _i1.Session session,
    Recipe row, {
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteRow<Recipe>(
      row,
      transaction: transaction,
    );
  }

  /// Deletes all rows matching the [where] expression.
  Future<List<Recipe>> deleteWhere(
    _i1.Session session, {
    required _i1.WhereExpressionBuilder<RecipeTable> where,
    _i1.Transaction? transaction,
  }) async {
    return session.db.deleteWhere<Recipe>(
      where: where(Recipe.t),
      transaction: transaction,
    );
  }

  /// Counts the number of rows matching the [where] expression. If omitted,
  /// will return the count of all rows in the table.
  Future<int> count(
    _i1.Session session, {
    _i1.WhereExpressionBuilder<RecipeTable>? where,
    int? limit,
    _i1.Transaction? transaction,
  }) async {
    return session.db.count<Recipe>(
      where: where?.call(Recipe.t),
      limit: limit,
      transaction: transaction,
    );
  }
}
