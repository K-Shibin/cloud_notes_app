import 'package:cloud_notes_app/routes/routeNames.dart';
import 'package:cloud_notes_app/widgets/customTextButton.dart';
import 'package:cloud_notes_app/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:cloud_notes_app/utils/color.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Simple padding for the content
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CLOUD NOTES!',
                style: TextStyle(
                  fontSize: 30,
                  color: wprimary,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              CustomTextField(
                hintText: 'Name',
                controller: nameController,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'Email',
                controller: emailController,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'Phone',
                controller: phoneController,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 50
              ),
              CustomTextButton(
                text: 'SIGN UP',
                onPressed: () {
                  Navigator.pushNamed(context, AppRoute.loginPage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
