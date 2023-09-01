import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:selimnotes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:selimnotes/models/note_model.dart';

import 'customButton.dart';
import 'customTextField.dart';

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
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
              hintText: 'Tiltle',
              onSaved: (val) {
                title = val;
              }),
          SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (val) {
              subTitle = val;
            },
          ),
          SizedBox(
            height: 70,
          ),
          BlocBuilder<AddNoteCubit, AddNoteStates>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    BlocProvider.of<AddNoteCubit>(context).addNote(NoteModel(
                        title: title!,
                        subTitle: subTitle!,
                        date: DateTime.now().toString(),
                        color: Colors.blue.value));
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              );
            },
          )
        ],
      ),
    );
  }
}
