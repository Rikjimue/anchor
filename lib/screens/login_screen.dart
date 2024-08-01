import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// TODO: Make fields unfocus when clicked away, add function to buttons, change style of buttons.

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 40.0),
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_outline_outlined),
                            labelText: 'Username', // Make text and repeted actions constants
                            hintText: 'Username',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            labelText: 'Password', // Make text and repeted actions constants
                            hintText: 'Password',
                            border: OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: null, 
                              icon: Icon(Icons.remove_red_eye_sharp),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: null, 
                            child: Text('Forgot Password?'),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: null, 
                            child: Text('Login'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
    );
  }
}