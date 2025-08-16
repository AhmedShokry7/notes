import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/custom_button.dart';
import 'package:notes/ui/widgets/custom_text_form_field.dart';

class AddNoteBtnSheet extends StatelessWidget {
  const AddNoteBtnSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
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
          const CustomTextFormField(hint: 'Title'),
          const SizedBox(height: 14.0),
          const CustomTextFormField(hint: 'Description', maxlines: 8),
          const Spacer(),
          const CustomButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
