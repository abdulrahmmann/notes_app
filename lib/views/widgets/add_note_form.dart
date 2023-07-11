import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_add_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 8,),
          CustomTextFormField(
              hintText: 'title',
              maxLines: 1,
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(height: 8,),
          CustomTextFormField(
              hintText: 'note',
              maxLines: 8,
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(height: 16,),
          CustomAddButton(onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            }else {
              autovalidateMode = AutovalidateMode.always;
            }
          }),
          const SizedBox(height: 8,),
        ],
      ),
    );
  }
}
