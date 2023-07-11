
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/model/notes_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {

  AddNoteCubit() : super(AddNoteInitial());

  void addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);
      emit(AddNoteSuccess());
    }catch(e) {
      emit(AddNoteFailure(e.toString()));
    }
  }

}