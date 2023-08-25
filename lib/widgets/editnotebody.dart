import 'package:flutter/material.dart';
import 'package:selimnotes/widgets/customTextField.dart';
import 'package:selimnotes/widgets/custom_appbar.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppbar(title: 'Edit Note',icon: Icons.check,),
          SizedBox(height: 32,),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 16,),
          CustomTextField(hintText: 'Content',maxLines: 5,)
        ],
      ),
    );
  }
}
