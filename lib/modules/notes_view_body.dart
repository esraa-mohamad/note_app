import 'package:flutter/material.dart';
import 'package:note_app/modules/custom_app_bar.dart';
import 'package:note_app/modules/notes_list_view.dart';

import '../cubits/notes_cubit/notes_cubit.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding:  EdgeInsets.symmetric(
        horizontal: 25
      ),
      child: Column(
        children:
        [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
              child: NotesListView()
          ),
        ],
      ),
    );
  }
}
