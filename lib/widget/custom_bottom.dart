import 'package:flutter/material.dart';
class CustomBottom extends StatelessWidget {
   CustomBottom({super.key,required this.text, required this.onPressed, required this.color});
String  text;
void Function()? onPressed;
Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(28)
      ),
      child: TextButton(onPressed: onPressed,
          child:  Text(text, style:  const TextStyle(fontSize: 24, color: Colors.black),)),
    );
  }
}
