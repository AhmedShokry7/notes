import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes/bloc_observer/simple_bloc_observer.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/ui/views/notes_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>("notes_box");
  Bloc.observer = SimpleBlocObserver();
  runApp(const Notes());
}

class Notes extends StatelessWidget {
  const Notes({super.key});

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
