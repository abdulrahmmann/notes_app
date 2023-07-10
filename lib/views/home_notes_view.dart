import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/home_notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add, color: Colors.black,),
          onPressed: () {

          }
      ),
      body: const NotesViewBody(),
    );
  }
}
