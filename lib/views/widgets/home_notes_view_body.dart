import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              // custom app bar.
              CustomAppBar(title: 'Search', icon: FontAwesomeIcons.search,),
              SizedBox(height: 24,),
              // notes listView.builder.
              CustomNoteItem(
                title: 'Flutter Tips',
                subTitle: 'flutter tips flutter tips flutter tips',
              ),

            ],
          ),
        ),
    );
  }
}


