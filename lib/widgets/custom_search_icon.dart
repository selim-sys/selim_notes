import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff3B3B3B),
          borderRadius: BorderRadius.circular(18)
      ),
      width: 52,
      height: 52,
      child: IconButton(
        onPressed: (){},
        icon: Icon(Icons.search,
        size: 28,),
      ),
    );
  }
}