import 'package:flutter/material.dart';
import 'package:note_app/modules/custom_icon.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title ,required this.icon,super.key, this.onPressed});

  final String title ;
  final IconData icon ;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeightManager.regular,
            fontSize: FontSize.s28,
            fontFamily: FontConstants.fontFamilyPrimary,
            color: ColorManager.white,
          ),
        ),
        CustomIcon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
