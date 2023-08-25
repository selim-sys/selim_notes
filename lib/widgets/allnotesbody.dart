import 'package:flutter/material.dart';

import 'custom_appbar.dart';
import 'custom_note.dart';
import 'notes-list-view.dart';

class AllNotesBody extends StatelessWidget {
  const AllNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppbar(title: 'Notes',icon: Icons.search),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}



