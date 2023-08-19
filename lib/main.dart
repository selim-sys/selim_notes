import 'package:flutter/material.dart';
import 'package:selimnotes/screens/allnotesscreen.dart';
void main(){
  runApp(SelimNotes());
}
class SelimNotes extends StatelessWidget {
  const SelimNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: AllNotesScreen(

      ),
    );
  }
}
