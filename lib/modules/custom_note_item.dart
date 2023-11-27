import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        padding: const EdgeInsets.only(top:25 , bottom: 25 , left: 16),
        decoration: BoxDecoration(
          color: ColorManager.darkYellow,
          borderRadius: BorderRadius.circular(18),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                'Flutter Tips',
                style: TextStyle(
                  fontSize: FontSize.s30,
                  fontWeight: FontWeightManager.bold,
                  fontFamily: FontConstants.fontFamilyPrimary,
                  color: ColorManager.black
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 18),
                child: Text(
                  'Build your project note app',
                  style: TextStyle(
                    color: ColorManager.lightGrey,
                    fontFamily: FontConstants.fontFamilySmallText,
                    fontWeight: FontWeightManager.regular,
                    fontSize: FontSize.s18,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    size: FontSize.s25,
                    color: ColorManager.black,
                  )
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 24, top: 24),
              child: Text(
                'Nov 27/2023',
                style: TextStyle(
                  fontSize: FontSize.s14,
                  fontWeight: FontWeightManager.light,
                  fontFamily: FontConstants.fontFamilySmallText,
                  color: ColorManager.lightGrey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
