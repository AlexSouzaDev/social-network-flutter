import 'package:flutter/material.dart';
import 'package:socialnetworkflutter/components/my_text_field.dart';

// login page
// an existing user can login using email and password
// once logged in, the user can view the home page

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

//controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  //ui elements
  @override
  Widget build(BuildContext context) {
    //scatffold
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,

      //body
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                MyTextField(
                  controller: emailController, 
                  hintText: "email", 
                  obscureText: false,
                  ),
                const SizedBox(height: 10),
          
                //password
                MyTextField(
                  controller: passwordController, 
                  hintText: "password", 
                  obscureText: true,
                  ),
                const SizedBox(height: 10),

                //forgot password
          
                //login button
          
                //register now
              ],
            ),
          ),
        ),
      ),
    );
  }
}
