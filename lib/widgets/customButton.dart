import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,required this.onPressed
  });
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.greenAccent
        ),
        onPressed: onPressed, child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: Center(child: Text('Add',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 19),
        ))));
  }
}