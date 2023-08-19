import 'package:flutter/material.dart';

import 'custom_appbar.dart';

class AllNotesBody extends StatelessWidget {
  const AllNotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          CustomAppbar(),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(onPressed: (){},
              child: Icon(Icons.add,),
            ),
          ),
        ],
      ),
    );
  }
}

