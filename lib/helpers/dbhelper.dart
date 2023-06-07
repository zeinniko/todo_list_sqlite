import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_list_sqlite/models/todo.dart';

class DbHelper {
  static late DbHelper _dbHelper;
  static late Database _database; 
  
  DbHelper.createObject();

  factory DbHelper(){
    _dbHelper = DbHelper.createObject();
    return _dbHelper;
  }

  Future<Database> initDb() async{
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'contact.db';
    return openDatabase(path, version: 1, onCreate: _createDb);
  }

  void _createDb(Database db, int version) async{
    await db.execute("""
    CREATE TABLE todo(
      id INTEGER PRIMARY KEY AUTOINCREMENT, 
      title TEXT, 
      description TEXT
      )
    """);
  }

  Future<Database> get database async {
    _database = await initDb();
    return _database;
  }

  Future<int> insert(Todo object) async{
    Database db = await this.database;
    int count = await db.insert('todo', object.toMap());
    return count;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var maplist = await db.query('todo',orderBy: 'title');
    return maplist;
  }

  Future<List<Todo>> getTodoList() async{
    var todoMapList = await select();
    int count = todoMapList.length;

    List<Todo> todoList = [];
  for(int i =0; i < count; i++){
    todoList.add(Todo.fromMap(todoMapList[i]));
  }
  return todoList;
  }
}