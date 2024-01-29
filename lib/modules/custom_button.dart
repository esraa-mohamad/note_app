// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({required this.onTap, this.isLoading = false,super.key});

  final void Function()? onTap;

  final isLoading ;
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
          child:  Center(
            child: isLoading
                ? const SizedBox(
                  height: 24,
                  width: 24,
                  child: CircularProgressIndicator(
                          color: ColorManager.black,

                          ),
                )
                :  const Text(
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
