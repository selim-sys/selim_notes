import 'package:flutter/material.dart';

class AllNotesScreen extends StatelessWidget {
  const AllNotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Notes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),),
                  IconButton.outlined(
                    color: Colors.white,
                      onPressed: (){},
                      icon: Icon(Icons.search))
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(onPressed: (){},
                  child: Icon(Icons.add,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
