import 'package:flutter/material.dart';
import 'package:note_app/modules/custom_search_icon.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Notes',
          style: TextStyle(
            fontWeight: FontWeightManager.regular,
            fontSize: FontSize.s28,
            fontFamily: FontConstants.fontFamilyPrimary,
            color: ColorManager.white,
          ),
        ),
        CustomSearchIcon(),
      ],
    );
  }
}
