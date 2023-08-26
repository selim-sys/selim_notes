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
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
         CustomTextFormField(hintText: 'Tiltle',onSaved: (val){
           title = val;
         }),
          SizedBox(height: 16,),
          CustomTextFormField(hintText: 'Content',maxLines: 5,onSaved: (val){
            subTitle = val;
          },),
          SizedBox(height: 70,),
          CustomButton(
            onPressed: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          )
        ],
      ),
    );
  }
}

