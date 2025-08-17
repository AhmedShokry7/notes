import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final bool isLoading;
  const CustomButton({super.key, this.onPressed, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(16),
      ),
      minWidth: 6000,
      height: 64.0,
      textColor: Colors.black,
      color: Colors.white,
      onPressed: onPressed,
      child: isLoading
          ? const CircularProgressIndicator(color: Colors.black)
          : const Text(
              "Add",
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
    );
  }
}
