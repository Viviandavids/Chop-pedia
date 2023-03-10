import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key? key, this.obscureText = false}) : super(key: key);
  final bool obscureText;

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _showPassword = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/icon/icon.png',
          height: 50,
        ),
        centerTitle: true,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Sign up',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            // const SizedBox(height: 10),
            const Text(
              'Email',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            // const SizedBox(height: 10),
            const Text('Password',
                style: TextStyle(
                  fontSize: 16,
                )),
            TextField(
              controller: passwordController,
              obscureText: widget.obscureText ? !_showPassword : false,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                border: const OutlineInputBorder(),
                suffixIcon: widget.obscureText
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      )
                    : null,
              ),
            ),
            // const SizedBox(height: 5),
            const Text(
              'Confirm Password',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            TextField(
              controller: confirmPasswordController,
              obscureText: widget.obscureText ? !_showPassword : false,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                border: const OutlineInputBorder(),
                suffixIcon: widget.obscureText
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      )
                    : null,
              ),
            ),
            // const SizedBox(height: 5),
            ElevatedButton(
              onPressed: () {
                // handle sign-up button press
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffD62E1E),
              ),
              child: const Text('Sign up'),
            ),
            // const SizedBox(height: 5),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'OR',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 2,
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // handle continue with facebook button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    elevation: 10,
                  ),
                  icon: const Icon(Icons.facebook),
                  label: const Text('Continue with Facebook'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // handle continue with apple button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    elevation: 10,
                  ),
                  icon: const Icon(Icons.apple),
                  label: const Text('Continue with Apple'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    // handle continue with google button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    elevation: 10,
                  ),
                  icon: const Icon(Icons.g_translate),
                  label: const Text('Continue with Google'),
                ),
              ],
            ),

            const Text(
              "By using Chop’pedia, you agree to our Privacy Policy and Terms of Use",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 46),
          ],
        ),
      ),
    );
  }
}
