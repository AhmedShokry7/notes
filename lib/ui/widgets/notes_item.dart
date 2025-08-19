import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/ui/views/edit_note_view.dart';
import 'package:intl/intl.dart';

class NotesItem extends StatelessWidget {
  final NoteModel noteModel;
  const NotesItem({super.key, required this.noteModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EditNoteView()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12.0),
        padding: const EdgeInsets.only(top: 18, bottom: 32, left: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(noteModel.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  noteModel.description,
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: .6),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete_rounded,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: Text(
                DateFormat('yyyy-MM-dd').format(DateTime.parse(noteModel.date)),

                style: TextStyle(
                  color: Colors.black.withValues(alpha: .6),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
