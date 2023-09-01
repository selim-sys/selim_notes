import 'package:flutter/material.dart';

import '../widgets/add-note-bottomsheet.dart';
import '../widgets/allnotesbody.dart';

class AllNotesScreen extends StatelessWidget {
  const AllNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  context: context,
                  builder: (context) => AddNoteBottomSheet());
            },
            child: Icon(Icons.add),
          ),
          body: const AllNotesBody()),
    );
  }
}
