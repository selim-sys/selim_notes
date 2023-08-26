import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:selimnotes/constnts.dart';
import 'package:selimnotes/models/note_model.dart';
import 'package:selimnotes/screens/allnotesscreen.dart';
void main()async{
  runApp(SelimNotes());

  await Hive.initFlutter();

  await Hive.openBox(kNotesBox);

  Hive.registerAdapter(NoteModelAdapter());
}
class SelimNotes extends StatelessWidget {
  const SelimNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins'
      ),
      debugShowCheckedModeBanner: false,
      home: AllNotesScreen(
      ),
    );
  }
}
