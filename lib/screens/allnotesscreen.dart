import 'package:flutter/material.dart';

import '../widgets/allnotesbody.dart';

class AllNotesScreen extends StatelessWidget {
  const AllNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
        body: const AllNotesBody()
      ),
    );
  }
}

