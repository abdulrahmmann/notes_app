import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 8,),
                const CustomAppBar(
                  title: 'Edit Note',
                  icon: FontAwesomeIcons.check,
                ),
                const SizedBox(height: 16,),
                CustomTextFormField(hintText: 'title', maxLines: 1,),
                const SizedBox(height: 8,),
                CustomTextFormField(hintText: 'subTitle', maxLines: 8,),
              ],
            ),
          ),
        ),
    );
  }
}