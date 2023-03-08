// import 'package:flutter/material.dart';

// class OnboardingPage extends StatefulWidget {
//   @override
//   _OnboardingPageState createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPage> {
//   int _currentPageIndex = 0;
//   PageController _pageController = PageController(initialPage: 0);
//   List<String> healthIssues = [];

//   void _toggleHealthIssue(String issue) {
//     if (healthIssues.contains(issue)) {
//       setState(() {
//         healthIssues.remove(issue);
//       });
//     } else {
//       setState(() {
//         healthIssues.add(issue);
//       });
//     }
//   }

//   void _goToNextPage() {
//     if (_currentPageIndex == 0) {
//       _pageController.animateToPage(
//         1,
//         duration: Duration(milliseconds: 500),
//         curve: Curves.easeInOut,
//       );
//     } else {
//       Navigator.of(context).pushReplacementNamed('/home');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Text(
//           '${_currentPageIndex + 1} of 2',
//           style: TextStyle(fontSize: 16),
//         ),
//         title: Image.asset(
//           'assets/icon/icon.png',
//           width: 30,
//           height: 30,
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.of(context).pushReplacementNamed('/home');
//             },
//             child: Text(
//               'Skip',
//               style: TextStyle(color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 20),
//           LinearProgressIndicator(
//             value: (_currentPageIndex + 1) / 2,
//             backgroundColor: Colors.grey[300],
//             valueColor: AlwaysStoppedAnimation<Color>(Color(0xffD62E1E)),
//           ),
//           SizedBox(height: 30),
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPageIndex = index;
//                 });
//               },
//               children: [
//                 // Page 1
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Do you have any health issues listed below?',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () {
//                         _toggleHealthIssue('Diabetes');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: healthIssues.contains('Diabetes')
//                             ? Color(0xffD62E1E)
//                             : Colors.grey[200],
//                       ),
//                       child: Text('Diabetes'),
//                     ),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {
//                         _toggleHealthIssue('Ulcer');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: healthIssues.contains('Ulcer')
//                             ? Color(0xffD62E1E)
//                             : Colors.grey[200],
//                       ),
//                       child: Text('Ulcer'),
//                     ),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {
//                         _toggleHealthIssue('Hypertension');
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: healthIssues.contains('Hypertension')
//                             ? Color(0xffD62E1E)
//                             : Colors.grey[200],
//                       ),
//                       child: Text('Hypertension'),
//                     ),
//                     SizedBox(height: 10),
//                     ElevatedButton(
//                       onPressed: () {
//                         _toggleHealthIssue('None');

// import 'package:flutter/material.dart';

// class HealthIssuesPage extends StatelessWidget {
//   const HealthIssuesPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("1 of 2"),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             // navigate back
//           },
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {
//               // skip button pressed
//             },
//             child: Text("Skip"),
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: 16),
//           LinearProgressIndicator(
//             value: 0.5,
//             valueColor: AlwaysStoppedAnimation<Color>(Color(0xffD62E1E)),
//           ),
//           SizedBox(height: 16),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Text(
//               "Do you have any health issues listed below?",
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//           SizedBox(height: 16),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   // Diabetes button pressed
//                 },
//                 child: Text("Diabetes"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Ulcer button pressed
//                 },
//                 child: Text("Ulcer"),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   // Hypertension button pressed
//                 },
//                 child: Text("Hypertension"),
//               ),
//             ],
//           ),
//           SizedBox(height: 16),
//           Center(
//             child: TextButton(
//               onPressed: () {
//                 // I don't have any health issues button pressed
//               },
//               child: Text("I don't have any health issues."),
//             ),
//           ),
//           Spacer(),
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // navigate to cooking preferences page
//                 },
//                 child: Text("Continue"),
//                 style: ElevatedButton.styleFrom(
//                   primary: Color(0xffD62E1E),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }