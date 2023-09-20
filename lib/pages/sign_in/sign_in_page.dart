import 'package:flutter/material.dart';
import 'package:practice_app/pages/sign_in/components/text_field_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final emailTextController = TextEditingController();
    final passwordTextController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldWidget(
              textEditingController: emailTextController,
              labelText: 'Email',
            ),
            TextFieldWidget(
              textEditingController: passwordTextController,
              labelText: 'Password',
              obscureText: true,
              suffixIcon: const Icon(Icons.visibility_off),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {},
                child: const Text('Sign In'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
