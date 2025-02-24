import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Icon prefixicon;
  final Icon? sufixxicon;
  final String hint_text;
  final TextInputType type;

  const CustomTextField({super.key, required this.prefixicon,this.sufixxicon, required this.hint_text, required this.type});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      keyboardType: type,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hint_text,
        prefixIcon: prefixicon,
        suffixIcon: sufixxicon,
      ),
    );
  }
}
