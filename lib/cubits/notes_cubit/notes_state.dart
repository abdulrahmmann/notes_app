
import 'package:notes_app/model/notes_model.dart';

abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState {}

class NotesLoading extends NotesState {
  final List<NoteModel> notes;

  NotesLoading(this.notes);
}

class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure(this.errorMessage);
}

