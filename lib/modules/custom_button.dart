import 'package:flutter/material.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.onTap,super.key});

  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: ColorManager.green,
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(
            child: Text(
              'ADD',
              style: TextStyle(
                fontSize: FontSize.s22,
                fontFamily: FontConstants.fontFamilyPrimary,
                fontWeight: FontWeightManager.medium,
                color: ColorManager.black
              ),
            ),
          ),
        ),
      ),
    );
  }
}
