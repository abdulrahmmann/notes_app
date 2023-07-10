import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_add_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8,),
            CustomTextField(hintText: 'name', maxLines: 1),
            SizedBox(height: 8,),
            CustomTextField(hintText: 'note', maxLines: 10),
            SizedBox(height: 16,),
            CustomAddButton(),
            SizedBox(height: 8,),
          ],
        ),
      ),
    );
  }
}
