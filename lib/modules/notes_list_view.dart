import 'package:flutter/material.dart';
import 'package:note_app/modules/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: ListView.builder(
          itemBuilder: (context,index){
            return const NoteItem();
          }
      ),
    );
  }
}
