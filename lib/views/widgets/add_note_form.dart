import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/model/notes_model.dart';
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
                subTitle = value;
              }),
          const SizedBox(height: 16,),
          BlocBuilder<AddNoteCubit, AddNoteState>(builder: (context, state) {
            return CustomAddButton(
              isLoading: state is AddNoteLoading? true: false,
                onTap: () {
              final formState = formKey.currentState;
              if (formState!.validate()) {
                formState.save();
                DateTime now = DateTime.now();
                String formattedDate = DateFormat.yMd().format(now);
                var note = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: formattedDate,
                    color: Colors.white54.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            });
          }),
          const SizedBox(height: 8,),
        ],
      ),
    );
  }
}
