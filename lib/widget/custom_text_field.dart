import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
   CustomTextField({super.key,required this.hintText, required this.icon, required this.controller});
 final String hintText;
 final IconData icon;
 final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(28),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(28),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.black, fontSize: 22),
          suffixIcon:  Icon(icon, color: Colors.black,size: 28,)
      ),
    );
  }
}