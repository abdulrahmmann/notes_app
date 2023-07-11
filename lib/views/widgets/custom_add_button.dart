import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.onTap, this.isLoading = false});

   final VoidCallback onTap;
   final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(8)
        ),
        child: isLoading ?  const CircularProgressIndicator(color: Colors.black,) : const Text(
          'Add',
          style: TextStyle(fontSize: 19, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}