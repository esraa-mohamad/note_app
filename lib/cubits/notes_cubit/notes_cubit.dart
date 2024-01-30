// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';


import '../../models/note_model.dart';
import '../../presentation/resources/string_manager.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


  List<NoteModel>?notes;
  fetchAllNotes(NoteModel noteModel) async
  {
    var notesBox = Hive.box<NoteModel>(StringManager.notesBox);
     notes = notesBox.values.toList();
  }
}

