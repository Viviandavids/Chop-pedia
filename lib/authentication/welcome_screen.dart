import 'package:chopedia/authentication/google_sign_in.dart';
import 'package:chopedia/features/home/home.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/icon/icon.png'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
            child: const Text('Log in as a guest'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sign in or create account',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline5,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Sign up to Choppedia'),
            ),
            const SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Log in to Choppedia'),
            ),
            const SizedBox(height: 16.0),
            Row(
              children: const [
                Expanded(
                  child: Divider(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text('OR'),
                ),
                Expanded(
                  child: Divider(),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/facebook_logo.png', height: 24.0),
                  label: const Text('Continue with Facebook'),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/apple_logo.png', height: 24.0),
                  label: const Text('Continue with Apple'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleSignInScreen()),
                    );
                  },
                  icon: Image.asset('assets/google_logo.png', height: 24.0),
                  label: const Text('Continue with Google'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Text(
              'By using Chop’pedia, you agree to our Privacy Policy and Terms of Use',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
