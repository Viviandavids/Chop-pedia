import 'package:chopedia/authentication/google_sign_in.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            semanticLabel: 'back',
          ),
        ),
        title: Image.asset(
          'assets/icon/icon.png',
          fit: BoxFit.cover,
          height: 50,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Sign in",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              "Email",
              style: TextStyle(fontSize: 16.0),
            ),
            const TextField(),
            const SizedBox(height: 16.0),
            const Text(
              "Password",
              style: TextStyle(fontSize: 16.0),
            ),
            const TextField(),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffD62E1E),
                padding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
              child: const Text(
                "Sign in",
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: const [
                Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("OR"),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/facebook.jpg', height: 24.0),
                  label: const Text('Continue with Facebook'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon:
                      Image.asset('assets/images/apple_logo.png', height: 24.0),
                  label: const Text('Continue with Apple'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GoogleSignInScreen()),
                    );
                  },
                  icon: Image.asset('assets/images/google.jpg', height: 24.0),
                  label: const Text('Continue with Google'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              "By using Chop'pedia, you agree to our Privacy Policy and Terms of Use",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12.0),
            ),
          ],
        ),
      ),
    );
  }
}
