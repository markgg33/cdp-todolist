import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  //reference the DB

  final _boxDB = Hive.box('myDB');

  //First time opening the application
  void createInitialData() {
    toDoList = [
      
    ];
  }

  void loadData() {
    toDoList = _boxDB.get("TODOLIST");
  }

  void updateDatabase() {
    _boxDB.put("TODOLIST", toDoList);
  }
  
}
