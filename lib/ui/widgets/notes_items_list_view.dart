import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/ui/widgets/notes_item.dart';

class NotesItemsListView extends StatelessWidget {
  const NotesItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: notes.length,
          itemBuilder: (context, index) => NotesItem(noteModel: notes[index]),
        );
      },
    );
  }
}
