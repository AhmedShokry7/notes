import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/notes_item.dart';

class NotesItemsListView extends StatelessWidget {
  const NotesItemsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => const NotesItem(),
    );
  }
}
