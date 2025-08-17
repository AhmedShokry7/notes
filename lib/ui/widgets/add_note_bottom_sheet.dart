import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/custom_button.dart';
import 'package:notes/ui/widgets/custom_text_form_field.dart';

class AddNoteBtoomSheet extends StatelessWidget {
  const AddNoteBtoomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: const _AddNoteForm(),
    );
  }
}

class _AddNoteForm extends StatefulWidget {
  const _AddNoteForm();

  @override
  State<_AddNoteForm> createState() => __AddNoteFormState();
}

class __AddNoteFormState extends State<_AddNoteForm> {
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
