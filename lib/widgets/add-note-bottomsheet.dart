import 'package:flutter/material.dart';
import 'package:selimnotes/widgets/customTextField.dart';

import 'customButton.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
           CustomTextField(hintText: 'Tiltle',),
            SizedBox(height: 16,),
            CustomTextField(hintText: 'Content',maxLines: 5),
            SizedBox(height: 70,),
            CustomButton()
          ],
        ),
      ),
    );
  }
}

