import 'package:flutter/material.dart';
import 'custom_note.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) => const CustomNote(),);
  }
}