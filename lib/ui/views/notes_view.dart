import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/custom_floating_action_btn.dart';
import 'package:notes/ui/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionBtn(),
      body: NotesViewBody(),
    );
  }
}
