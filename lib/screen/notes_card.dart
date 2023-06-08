import 'package:flutter/material.dart';
import 'package:todo_list_sqlite/models/note.dart';

class NotesCard extends StatelessWidget {
  final Note note;

  const NotesCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            note.nama,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 5),
          Text(
            note.no_hp,
            style: const TextStyle(fontSize: 17),
          ),
          const SizedBox(height: 5),
          Text(
            note.npm,
            style: const TextStyle(fontSize: 17),
          ),
          Icon(Icons.delete)
        ],
      ),
    );
  }
}