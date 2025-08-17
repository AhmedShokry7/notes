import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var noteBox = Hive.box<NoteModel>("notes_box");
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesSucess(notes));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
