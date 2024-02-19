import 'package:flutter/material.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({required this.icon,super.key, this.onPressed});

  final  Function()? onPressed;

  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: ColorManager.grey
      ),
      child: IconButton(
        onPressed: onPressed,
        icon:  Icon(
          icon,
          color: ColorManager.white,
          size: FontSize.s28,
        ),
      ),
    );
  }
}
