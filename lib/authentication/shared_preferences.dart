// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   bool _isNewUser;

//   @override
//   void initState() {
//     super.initState();
//     checkIfUserIsNew();
//   }

//   // Check if user is a new user or an existing user
//   Future<void> checkIfUserIsNew() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     bool isNewUser = prefs.getBool('isNewUser') ?? true;
//     setState(() {
//       _isNewUser = isNewUser;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_isNewUser == null) {
//       return Container(); // Show a blank screen until the check is complete
//     } else if (_isNewUser) {
//       return MaterialApp(
//         home: SignupScreen(),
//       );
//     } else if (isLoggedIn()) {
//       return MaterialApp(
//         home: HomeScreen(),
//       );
//     } else {
//       return MaterialApp(
//         home: SigninScreen(),
//       );
//     }
//   }

//   // Check if user is logged in
//   bool isLoggedIn() {
//     SharedPreferences prefs = SharedPreferences.getInstance() as SharedPreferences;
//     bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
//     return isLoggedIn;
//   }
// }
