import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (BuildContext context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: CustomNoteItem(
              note: notes[index],
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const EditNotesView();
              }));
            },
            ),
          );
        });
      }
    );
  }
}
