import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_sqlite/models/notes_operation.dart';
import 'package:todo_list_sqlite/screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override  
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (context) => NotesOperation(),
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
