import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/custom_app_bar.dart';
import 'package:notes/ui/widgets/notes_items_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

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
