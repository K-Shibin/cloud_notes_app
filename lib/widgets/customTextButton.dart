import 'package:flutter/material.dart';
import 'package:cloud_notes_app/utils/color.dart'; // Ensure this points to your color utility file

class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: wsecondary.withOpacity(0.4), // Background color of the button
        borderRadius: BorderRadius.circular(8), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20), // Padding inside the button
           // Use transparent to show container background
          
        ),
        child: Text(text, style: TextStyle(fontSize: 16,color: Colors.black),), // Button text and style
      ),
    );
  }
}
