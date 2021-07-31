import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:quotes_app/models/category.dart';
import 'package:quotes_app/models/message.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  DatabaseHelper._();

  static DatabaseHelper databaseHelper = DatabaseHelper._();
  static final String dbaseName = 'quotes.db';
  static final String categoryTableName = 'category';
  static final String categoryIdColumnName = 'id';
  static final String categoryNameColumnName = 'name';
  static final String messageTableName = 'message';
  static final String messageIdColumnName = 'id';
  static final String messageQuotesColumnName = 'quotes';
  static final String messageCatIdColumnName = 'catId';

  static final String favoriteTableName = 'favorite';
  static final String favoriteIdColumnName = 'id';
  static final String favoriteQuotesColumnName = 'quotes';

  Database database;

  initDatabase() async {
    database = await getDatabaseConnection();
  }

  Future<Database> getDatabaseConnection() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + '/$dbaseName';
    Database database = await openDatabase(path, version: 1, onConfigure: (db) {
      db.execute('PRAGMA foreign_keys=ON');
    }, onCreate: (db, version) {
      db.execute('''CREATE TABLE $categoryTableName 
          ($categoryIdColumnName INTEGER PRIMARY KEY AUTOINCREMENT,
           $categoryNameColumnName TEXT)''');
      db.execute(
          '''CREATE TABLE $messageTableName ($messageIdColumnName INTEGER PRIMARY KEY AUTOINCREMENT,
           $messageQuotesColumnName TEXT,
            $messageCatIdColumnName INTEGER, FOREIGN KEY ($messageCatIdColumnName) REFERENCES $categoryTableName ($categoryIdColumnName) ON DELETE CASCADE )''');
      db.execute(
          '''CREATE TABLE $favoriteTableName ($favoriteIdColumnName INTEGER PRIMARY KEY AUTOINCREMENT, $favoriteQuotesColumnName TEXT)''');
    }, onOpen: (database) {
      print('the database has been opened');
    });
    return database;
  }

  insertCategory(Category category) async {
    int rowNum = await database.insert(categoryTableName, category.toMap());
    print(rowNum);
  }

  insertMessage(Message message) async {
    int rowNum = await database.insert(messageTableName, message.toMap());
    print(rowNum);
  }
  insertFavorite(Message message) async {
    int rowNum = await database.insert(favoriteTableName,message.toMap1());
    print('$rowNum favorite');
  }

  deleteFavorite(int id) async {
    int rowNum = await database.delete(favoriteTableName,where: 'id=?',whereArgs: [id]);
    print('$rowNum deleteFavorite');
  }

  Future<List<Category>> getAllCategory() async {
    List<Map<String, Object>> results = await database.query(categoryTableName);
    List<Category> category = results.map((e) {
      return Category.fromMap(e);
    }).toList();
    return category;
  }

  Future<List<Message>> getAllMessages(int catId) async {
    List<Map<String, Object>> results = await database.query(messageTableName,
        where: '$messageCatIdColumnName=?', whereArgs: [catId]);
    List<Message> messages = results.map((e) {
      return Message.fromMap(e);
    }).toList();
    return messages;
  }

  Future<List<Message>> getAllFavorite() async {
    List<Map<String, Object>> results = await database.query(favoriteTableName);
    List<Message> messages = results.map((e) {
      return Message.fromMap1(e);
    }).toList();
    return messages;
  }
}
