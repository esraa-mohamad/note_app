import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/presentation/note/note_screen.dart';
import 'package:note_app/presentation/resources/string_manager.dart';

void main() async{

  await Hive.initFlutter();
  await Hive.openBox(StringManager.notesBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xff303030),
      ),
      debugShowCheckedModeBanner: false,
      home: const NoteScreen(),
    );
  }
}

