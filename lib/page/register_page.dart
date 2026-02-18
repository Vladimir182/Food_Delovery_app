// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:full_food_delivery/page/home_page.dart';
import 'package:full_food_delivery/services/auth/auth_service.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    // get auth service
    final authService = AuthService();

    // check if passwords match -> create user
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      }
      // display any errors
      catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(e.toString(), style: TextStyle(fontSize: 20)),
          ),
        );
      }
    }
    // if passwords don't match -> show error
    else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text("Password don't match")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Icon(
              Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),

            // message, app slogan
            Text(
              "Let's create an account for you",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            // email textfield
            MyTextfield(
              controller: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            const SizedBox(height: 25),

            // password textfield
            MyTextfield(
              controller: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            const SizedBox(height: 25),

            // confirm password textfield
            MyTextfield(
              controller: confirmPasswordController,
              hintText: "Confirm password",
              obscureText: true,
            ),

            const SizedBox(height: 25),

            // sign up button
            MyButton(text: 'Sign up', onTap: register),

            const SizedBox(height: 25),

            // already have an account? Login here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'already have an account?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
