import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_signup_page_button.dart';
import 'package:flutter_application_1/components/my_textfield.dart';
import 'package:flutter_application_1/components/square.tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in user method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              Image.asset(
                'assets/AKNew.png',
                height: 100,
              ),

              const SizedBox(height: 50),

              // welcome message
              Text(
                'Welcome Back you\'ve been missed!',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'User Name',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Theme.of(context)
                              .colorScheme
                              .onBackground
                              .withOpacity(0.6)),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MySignUpPageButton(
                onTap: () {
                  Navigator.pushNamed(context, '/intro_page');
                },
              ),

              const SizedBox(height: 50),

              // or continue with
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Theme.of(context)
                            .colorScheme
                            .onBackground
                            .withOpacity(0.5),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 50),

              // google + apple sign in buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // google button
                  SqareTile(imagePath: 'assets/google.png'),

                  const SizedBox(width: 10),

                  // apple button
                  SqareTile(imagePath: 'assets/apple.png')
                ],
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Not a member? ',
                    style: TextStyle(color: Colors.grey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register_page');
                    },
                    child: const Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.blue,
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
