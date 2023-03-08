import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/icon/icon.png',
          height: 30,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // handle sign-up button press
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffD62E1E),
              ),
              child: const Text('Sign up'),
            ),
            const SizedBox(height: 24),
            Divider(
              thickness: 1,
              indent: 32,
              endIndent: 32,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 24),
            const Text(
              'OR',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // handle continue with facebook button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                  ),
                  icon: const Icon(Icons.facebook),
                  label: const Text('Continue with Facebook'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // handle continue with apple button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                  ),
                  icon: const Icon(Icons.apple),
                  label: const Text('Continue with Apple'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // handle continue with google button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                  icon: const Icon(Icons.g_translate),
                  label: const Text('Continue with Google'),
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Text(
              "By using Chop’pedia, you agree to our Privacy Policy and Terms of Use",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
