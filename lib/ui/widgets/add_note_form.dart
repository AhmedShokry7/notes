import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/custom_button.dart';
import 'package:notes/ui/widgets/custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, descreption;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(
            width: 42.0,
            child: Divider(
              thickness: 5,
              color: Colors.white,
              radius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            "Add note title and description",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 24.0),
          CustomTextFormField(
            hint: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 14.0),
          CustomTextFormField(
            hint: 'Description',
            maxlines: 5,
            onSaved: (value) {
              descreption = value;
            },
          ),
          const Spacer(),
          CustomButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
