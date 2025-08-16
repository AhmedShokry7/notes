import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/custom_text_form_field.dart';

class AddNoteBtnSheet extends StatelessWidget {
  const AddNoteBtnSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32.0),
      child: const Column(
        children: [
          Text(
            "Add your Note title and body",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 24.0),
          CustomTextFormField(hint: 'Title'),
          SizedBox(height: 12.0),
          CustomTextFormField(hint: 'Title'),
        ],
      ),
    );
  }
}
