import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
    CustomTextFormField({super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (val){
        if(val?.isEmpty ?? true){
          return 'field is required';
        }
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8)
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.greenAccent
        )
      ),
    );
  }
}
