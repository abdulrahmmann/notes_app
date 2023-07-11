import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({super.key, required this.hintText, this.maxLines = 1, this.onSaved});

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) { // ' ? ' -> possibility is empty.
          return 'field is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  width: 1,
                  color: Colors.white
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  width: 1,
                  color: Colors.white
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(
                  width: 1,
                  color: kPrimaryColor
              )
          ),
          hintText: hintText,
          hintStyle: TextStyle(
              color: Colors.white.withOpacity(.5),
              fontSize: 17
          )
      ),
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
    );
  }
}