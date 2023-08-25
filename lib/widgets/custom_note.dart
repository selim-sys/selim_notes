import 'package:flutter/material.dart';
import 'package:selimnotes/screens/editnotescreen.dart';

class CustomNote extends StatelessWidget {
  const CustomNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => EditNoteScreen(),));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Container(
          padding: EdgeInsets.only(top: 8),
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(16)),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'First Note',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 26),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.delete,
                          color: Colors.black,
                          size: 28,
                        ))
                  ],
                ),
                SizedBox(height: 8,),
                Text(
                  'Today iam going to eat some food with my family',
                  style: TextStyle(
                      color: Colors.black.withOpacity(.6), fontSize: 18),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'May 21.2023',
                      style:
                      TextStyle(
                          fontSize: 16,
                          color: Color(0xff303030).withOpacity(.7)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}