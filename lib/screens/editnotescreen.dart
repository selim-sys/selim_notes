import 'package:flutter/material.dart';

import '../widgets/editnotebody.dart';

class EditNoteScreen extends StatelessWidget {
  const EditNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: EditNoteBody(),
      ),
    );
  }
}
