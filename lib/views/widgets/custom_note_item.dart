import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/model/notes_model.dart';

class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key, required this.onTap, required this.note});

  final NoteModel note;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16)
        ),
        child: Column(
          children: [
            ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(fontSize: 19, color: Colors.black.withOpacity(.5)),
                  ),
                ),
                trailing: IconButton(
                  onPressed: (){
                    note.delete();
                  },
                  icon: const Icon(FontAwesomeIcons.trash), color: Colors.black, )
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                note.date,
                style: TextStyle(fontSize: 15, color: Colors.black.withOpacity(.5)),
              ),
            )
          ],
        ),
      ),
    );
  }
}