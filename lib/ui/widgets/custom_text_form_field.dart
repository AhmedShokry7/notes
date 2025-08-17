import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final int? maxlines;
  final void Function(String?)? onSaved;
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.maxlines,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      maxLines: maxlines,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 16.0,
        ),
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        border: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedBorder: _buildBorder(color: Colors.white, borderWidth: 2),
        errorBorder: _buildBorder(color: Colors.red),
      ),
    );
  }
}

OutlineInputBorder _buildBorder({Color? color, double? borderWidth}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: color ?? Colors.grey,
      width: borderWidth ?? 1,
    ),
  );
}
