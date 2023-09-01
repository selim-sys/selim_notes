import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:selimnotes/constnts.dart';
import 'package:selimnotes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note) async{
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
