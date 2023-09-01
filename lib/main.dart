import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:selimnotes/constnts.dart';
import 'package:selimnotes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:selimnotes/models/note_model.dart';
import 'package:selimnotes/screens/allnotesscreen.dart';
import 'package:selimnotes/simple-bloc-observer.dart';
void main()async{
  runApp(SelimNotes());

  Bloc.observer = SimpleBlocObseerver();

  await Hive.initFlutter();

  Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNotesBox);

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
