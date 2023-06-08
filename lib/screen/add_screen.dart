import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_sqlite/models/notes_operation.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? namaText;
    String? no_hpText;
    String? npmText;

    return Scaffold(
      backgroundColor: Color(0xFFD8C4B6),
      appBar: AppBar(
        title: const Text('Todo List'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 80,
        ),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Nama',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              onChanged: (value) {
                namaText = value;
              },
            ),
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'No Hp',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              onChanged: (value) {
                no_hpText = value;
              },
            ),
            TextField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'NPM',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
              onChanged: (value) {
                npmText = value;
              },
            ),
            SizedBox(
              height: 400,
            ),
            TextButton(
              onPressed: () {
                if (namaText != null && no_hpText != null) {
                  context
                      .read<NotesOperation>()
                      .addNewNote(namaText!, no_hpText!, npmText!);
                }
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 10, bottom: 10),
                backgroundColor: Colors.white,
              ),
              child: const Text('Tambahkan data',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
