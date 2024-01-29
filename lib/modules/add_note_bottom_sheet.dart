// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';

import 'add_note_form.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return  BlocConsumer<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if(state is AddNoteFailure){
          if (kDebugMode) {
            print('Failed  ${state.errorMessage}');
          }
        }
        if(state is AddNoteSuccess){
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is AddNoteLoading ? true : false ,
            child: const SingleChildScrollView(child: AddNoteForm())
        );
      },
    );
  }
}



