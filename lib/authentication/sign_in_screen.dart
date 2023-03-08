import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: Image.asset('assets/icon/icon.png'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/icon/facebook_logo.png'),
                  label: const Text("Continue with Facebook"),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff1877F2),
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/icon/apple_logo.png'),
                  label: const Text("Continue with Apple"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/icon/google_logo.png'),
                  label: const Text("Continue with Google"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                  ),
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
