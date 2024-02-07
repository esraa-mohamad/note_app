import 'package:flutter/material.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/modules/custom_app_bar.dart';
import 'package:note_app/modules/custom_text_field.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_list_view.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});

  final NoteModel note ;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {

  String? title , content ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 25
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
              onPressed:(){
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              } ,
          ),
          const SizedBox(
            height: 50,
          ),
           CustomTextField(
              hintText: widget.note.title,
              onChanged: (value)
              {
                title = value;
              },
          ),
          const SizedBox(
            height: 25,
          ),
           CustomTextField(
            hintText: widget.note.subTitle,
            maxLine: 7,
            onChanged: (value)
            {
              content = value;
            },
          ),
          const SizedBox(
            height: 32,
          ),
           EditNoteColorsList(
            noteModel: widget.note,
          ),
        ],
      ),
    );
  }
}


