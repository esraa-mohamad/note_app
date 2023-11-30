import 'package:flutter/material.dart';

import '../presentation/resources/color_manager.dart';
import '../presentation/resources/font_manager.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key});

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Text(
          'Edit Note',
          style: TextStyle(
            fontWeight: FontWeightManager.regular,
            fontSize: FontSize.s28,
            fontFamily: FontConstants.fontFamilyPrimary,
            color: ColorManager.white,
          ),
        ),
      ],
    );
  }
}
