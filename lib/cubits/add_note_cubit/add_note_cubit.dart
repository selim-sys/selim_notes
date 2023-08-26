import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:selimnotes/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note){

  }
}
