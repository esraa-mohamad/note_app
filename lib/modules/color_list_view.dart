import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/modules/color_item.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/presentation/resources/color_manager.dart';

import '../models/note_model.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key,});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {

   int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount: ColorManager.colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = ColorManager.colors[index];
                  setState(() {
                  });
                },
                child: ColorItem(
                  color:ColorManager.colors[index],
                  isActive: currentIndex == index  ,
                ),
              ),
            );
          }
      ),
    );
  }
}





class EditNoteColorsList extends StatefulWidget {
   const EditNoteColorsList({super.key, required this.noteModel});

   final NoteModel noteModel;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {


  late int currentIndex ;

  @override
  void initState() {
    currentIndex = ColorManager.colors.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount: ColorManager.colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  widget.noteModel.color = ColorManager.colors[index].value;
                  setState(() {
                  });
                },
                child: ColorItem(
                  color:ColorManager.colors[index],
                  isActive: currentIndex == index  ,
                ),
              ),
            );
          }
      ),
    );
  }
}
