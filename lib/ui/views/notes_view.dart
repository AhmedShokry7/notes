import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/ui/widgets/custom_floating_action_btn.dart';
import 'package:notes/ui/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Scaffold(
        floatingActionButton: CustomFloatingActionBtn(),
        body: NotesViewBody(),
      ),
    );
  }
}
