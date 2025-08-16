import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final int? maxlines;
  const CustomTextFormField({super.key, required this.hint, this.maxlines});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
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
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: Colors.white, borderWidth: 2),
        errorBorder: buildBorder(color: Colors.red),
      ),
    );
  }
}

OutlineInputBorder buildBorder({Color? color, double? borderWidth}) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide(
      color: color ?? Colors.grey,
      width: borderWidth ?? 1,
    ),
  );
}
