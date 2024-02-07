import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/presentation/note/edit_note_screen.dart';
import 'package:note_app/presentation/resources/color_manager.dart';
import 'package:note_app/presentation/resources/font_manager.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/note_model.dart';
class NoteItem extends StatelessWidget {
  const NoteItem({required this.note , super.key});

  final NoteModel note ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,),
      child: GestureDetector(
        onTap: ()
        {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=>const EditNoteView(),
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top:25 , bottom: 25 , left: 16),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(18),
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title:  Text(
                  note.title,
                  style: const TextStyle(
                    fontSize: FontSize.s30,
                    fontWeight: FontWeightManager.bold,
                    fontFamily: FontConstants.fontFamilyPrimary,
                    color: ColorManager.black
                  ),
                ),
                subtitle:  Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(
                      color: ColorManager.lightGrey,
                      fontFamily: FontConstants.fontFamilySmallText,
                      fontWeight: FontWeightManager.regular,
                      fontSize: FontSize.s18,
                    ),
                  ),
                ),
                trailing: IconButton(
                    onPressed: (){
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      size: FontSize.s25,
                      color: ColorManager.black,
                    )
                ),
              ),
               Padding(
                padding: const EdgeInsets.only(right: 24, top: 24),
                child: Text(
                  note.date,
                  style: const TextStyle(
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
      ),
    );
  }
}
