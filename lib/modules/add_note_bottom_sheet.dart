import 'package:flutter/material.dart';
import 'package:note_app/modules/custom_button.dart';
import 'package:note_app/modules/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomTextField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLine: 5,
          ),
          SizedBox(
            height: 80,
          ),
          CustomButton(),
        ],
      ),
    );
  }
}
