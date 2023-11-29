import 'package:flutter/cupertino.dart';
import 'package:note_app/modules/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context,index){
          return const NoteItem();
        }
    );
  }
}
