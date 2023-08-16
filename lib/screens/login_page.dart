import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:pricing_structure/consts/routes.dart';

import '../widgets/login/login_input.dart';
import '../widgets/login/sign_in_btn.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void signUserIn() async {
    Navigator.pushReplacementNamed(context, DASHBOARD_PAGE);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo
            Lottie.asset(
              "assets/animated_icons/login_icon.json",
              height: 500,
              width: 500,
              fit: BoxFit.cover,
            ),

            // welcome MSG
            Text(
              'Buckle up! You have projects to manage',
              style: GoogleFonts.aBeeZee(
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),

            const SizedBox(height: 25),

            // username textfield
            LoginInputs(
              controller: _emailController,
              hintText: 'Email or Username',
              obscureText: false,
            ),

            const SizedBox(height: 10),

            // password textfield
            LoginInputs(
              controller: _passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(height: 10),

            // forgot password?
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 250),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // sign in button
            // if (isAuthenticating) const CircularProgressIndicator(),
            // if (!isAuthenticating)
            SignInBtn(
              onTap: signUserIn,
              text: 'Sign in',
            )
          ],
        ),
      ),
    );
  }
}
