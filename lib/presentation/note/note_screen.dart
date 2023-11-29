import 'package:flutter/material.dart';
import 'package:note_app/modules/notes_view_body.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
    );
  }
}
