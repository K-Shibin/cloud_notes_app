import 'package:flutter/material.dart';
import 'package:cloud_notes_app/widgets/customTextButton.dart';
import 'package:cloud_notes_app/widgets/customTextField.dart';
import 'package:cloud_notes_app/utils/color.dart';
import 'package:cloud_notes_app/routes/routeNames.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), 
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
                hintText: 'Email',
                controller: emailController,
              ),
              SizedBox(height: 20),
              CustomTextField(
                hintText: 'Password',
                controller: passwordController,
                obscureText: true,
              ),
              SizedBox(height: 50), 
              CustomTextButton(
                text: 'LOGIN',
                onPressed: () {
                  print('Login button pressed!');
                  Navigator.pushNamed(context, AppRoute.homePage);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'If not registered, ',
                    style: TextStyle(
                      color: wprimary,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoute.signupScreen);
                    },
                    child: Text(
                      'register now',
                      style: TextStyle(
                        color: ksecondary, 
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
