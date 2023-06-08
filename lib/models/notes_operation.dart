import 'package:flutter/material.dart';
import 'package:todo_list_sqlite/models/note.dart';

class NotesOperation with ChangeNotifier {
  List<Note> _notes = [];

  List<Note> get getNotes => _notes;

  void addNewNote(String nama, String no_hp, String npm){
    Note note = Note(nama, no_hp, npm);
    _notes.add(note);
    notifyListeners();
  }
}