import 'package:flutter/material.dart';

// login page
// an existing user can login using email and password
// once logged in, the user can view the home page

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //ui elements
  @override
  Widget build(BuildContext context) {
    //scatffold
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      //body
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //logo
              Icon(
                Icons.lock_open_rounded,
                size: 72,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(height: 50),

              //message
              Text(
                "Welcome back, you\'ve been missed!",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 25),
              //email

              //password

              //forgot password

              //login button

              //register now
            ],
          ),
        ),
      ),
    );
  }
}
