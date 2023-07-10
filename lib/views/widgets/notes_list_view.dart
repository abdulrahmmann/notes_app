import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return  Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: CustomNoteItem(
            title: 'Flutter Tips',
            subTitle: 'Flutter Tips',
          onTap: () {
              Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) {
                    return const EditNotesView();
              }));
          },
        ),
      );
    });
  }
}
