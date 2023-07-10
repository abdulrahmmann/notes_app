import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_add_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

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
            hintText: 'name',
            maxLines: 1,
          onSaved: (value) {
           title = value;
          }),
          const SizedBox(height: 8,),
          CustomTextFormField(
              hintText: 'note',
              maxLines: 10,
              onSaved: (value) {
                title = value;
              }),
          const SizedBox(height: 8,),
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
