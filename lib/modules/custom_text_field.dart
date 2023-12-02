import 'package:flutter/material.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText , this.maxLine=1, this.onSaved ,super.key});

  final String hintText ;
  final int maxLine ;
  final void Function(String?)? onSaved ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: TextFormField(
        onSaved: onSaved,
        validator: (value){
          if(value?.isEmpty ?? true)
          {
            return 'Field is required';
          }else
          {
            return null;
          }
        },
        cursorColor: ColorManager.green,
        maxLines: maxLine,
        decoration: InputDecoration(
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(ColorManager.green),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: ColorManager.green,
            fontSize: FontSize.s18
          ),
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
