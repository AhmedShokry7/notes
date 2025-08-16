import 'package:flutter/material.dart';
import 'package:notes/ui/widgets/add_note_btn_sheet.dart';

class CustomFloatingActionBtn extends StatelessWidget {
  const CustomFloatingActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(1000),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => const AddNoteBtnSheet(),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
