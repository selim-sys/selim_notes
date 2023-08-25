import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;

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
        icon: Icon(icon,
        size: 28,),
      ),
    );
  }
}