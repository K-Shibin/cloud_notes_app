import 'package:cloud_notes_app/utils/color.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final IconData? prefixIcon;
  final void Function(String)? onChanged;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.prefixIcon,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ksecondary.withOpacity(0.9), // Background color of the text field
        borderRadius: BorderRadius.circular(30), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: kprimary), // Placeholder text color
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          border: InputBorder.none, // Remove the default border
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Padding inside the text field
        ),
      ),
    );
  }
}
