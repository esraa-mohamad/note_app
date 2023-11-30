import 'package:flutter/material.dart';
import 'package:note_app/modules/custom_app_bar.dart';
import 'package:note_app/modules/custom_text_field.dart';


class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key});

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 25
      ),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
              hintText: 'Title'
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hintText: 'Title',
            maxLine: 7,
          ),
        ],
      ),
    );
  }
}
