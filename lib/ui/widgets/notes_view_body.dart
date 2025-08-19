import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/ui/widgets/custom_app_bar.dart';
import 'package:notes/ui/widgets/notes_items_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Notes', icon: Icons.search),
            SizedBox(height: 16),
            Expanded(child: NotesItemsListView()),
          ],
        ),
      ),
    );
  }
}
