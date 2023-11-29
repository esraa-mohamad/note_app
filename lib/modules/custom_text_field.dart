import 'package:flutter/material.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: TextField(
        cursorColor: ColorManager.green,
        decoration: InputDecoration(
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(ColorManager.green),
          hintText: 'Title',
          hintStyle: const TextStyle(
            color: ColorManager.green,
            fontSize: FontSize.s18
          )
        ),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color])
{
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide:  BorderSide(
        color: color ?? Colors.white,
      )
  );
}
