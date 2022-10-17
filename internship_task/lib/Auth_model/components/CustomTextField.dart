import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.label,
    this.controller,
    this.inputType,
    required this.obscureText,
    required this.hintText,
  }) : super(key: key);

  final String label;
  TextEditingController? controller;
  TextInputType? inputType;
  final bool obscureText;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        keyboardType: inputType,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: GoogleFonts.poppins(
              color: const Color(0xff999B9F),
              fontSize: 13,
              fontWeight: FontWeight.w400),
          hintStyle: GoogleFonts.poppins(
              color: const Color(0xff1D2733),
              fontSize: 15,
              fontWeight: FontWeight.w500),
          hintText: hintText,
          filled: true,
          fillColor: const Color(0xfff5f5f5),
          focusedBorder: InputBorder.none,
        ));
  }
}
