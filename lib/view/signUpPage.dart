import 'package:flutter/material.dart';
import 'package:cloud_notes_app/utils/color.dart'; 

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      body: Center( // Center the content vertically and horizontally
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
          children: [
            SizedBox(height: 100), // Optional space from the top
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Welcome to', 
                style: TextStyle(
                  fontSize: 25, // First text with font size 25
                  color: wprimary, // White color
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'CLOUD NOTES!',
                style: TextStyle(
                  fontSize: 35, // Second text with font size 35
                  color: wprimary, // Light blue color
                  fontWeight: FontWeight.bold, // Bold text
                ),
              ),
            ),
           
            Spacer(),
           Container(
              height: 580, // Fixed height for the container
              width: double.infinity,
              decoration: BoxDecoration(
                color: kprimarytransparent, // White background for the container
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(150), // Top left radius
                   // Top right radius
                ),
              ),
              child:  Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Padding(
                      padding: const EdgeInsets.only(left: 75.0),
                      child: Text('S I G N  U P',
                      style: TextStyle(
                        fontSize: 25,
                        color: kprimary
                      ),),
                    ),
                  ],
                ),
              )
              

           )
          ],
        ),
      ),
    );
  }
}
