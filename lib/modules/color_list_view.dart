import 'package:flutter/cupertino.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/modules/color_item.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key,});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {

  List<Color> colors= const [
    Color(0xffc3c3e6),
    Color(0xffBE9DF6),
    Color(0xffbba0ca),
    Color(0xffb370b0),
    Color(0xffDD4699),
    Color(0xffBC12B4),
    Color(0xff6D6DF4),

  ];
   int currentIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
            return   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: (){
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {
                  });
                },
                child: ColorItem(
                  color:colors[index],
                  isActive: currentIndex == index  ,
                ),
              ),
            );
          }
      ),
    );
  }
}
