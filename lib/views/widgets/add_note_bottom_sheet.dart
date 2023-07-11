import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/views/widgets/add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(

          builder: (BuildContext context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading? true: false,
              child: SingleChildScrollView(
                child: AddNoteForm(),
              ),
            );
          },

          listener: (BuildContext context, Object? state) {
            // check when state is success ->
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
            // check when state is failure ->
            if (state is AddNoteFailure) {
              print('add note failure');
            }
          },
        ),
      ),
    );
  }
}

/*
-> loading -> modal hud -> builder
-> success -> pop -> listener
-> failed -> print -> listener
 */

