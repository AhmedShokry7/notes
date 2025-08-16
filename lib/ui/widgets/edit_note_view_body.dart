import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/custom_app_bar.dart';
import 'package:notes/ui/widgets/custom_text_form_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
      child: SafeArea(
        child: Column(
          children: [
            CustomAppBar(title: 'Edit note', icon: Icons.check),
            SizedBox(height: 16),
            CustomTextFormField(hint: 'Title'),
            SizedBox(height: 14.0),
            CustomTextFormField(hint: 'Description', maxlines: 5),
          ],
        ),
      ),
    );
  }
}
