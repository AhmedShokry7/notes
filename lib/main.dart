import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/ui/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox("notes_box");
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // scaffoldBackgroundColor: const Color.fromARGB(255, 51, 51, 51),
      ),
      home: const NotesView(),
    );
  }
}
