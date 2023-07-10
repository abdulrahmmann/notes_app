import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 8,),
                CustomAppBar(
                  title: 'Edit Note',
                  icon: FontAwesomeIcons.check,
                ),
                SizedBox(height: 16,),
                CustomTextField(hintText: 'title', maxLines: 1,),
                SizedBox(height: 8,),
                CustomTextField(hintText: 'subTitle', maxLines: 10,),
              ],
            ),
          ),
        ),
    );
  }
}