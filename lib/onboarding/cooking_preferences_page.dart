// import 'package:flutter/material.dart';

// class OnboardingPage extends StatefulWidget {
//   @override
//   _OnboardingPageState createState() => _OnboardingPageState();
// }

// class _OnboardingPageState extends State<OnboardingPage> {
//   int _currentPageIndex = 0;
//   List<Widget> _pages = [
//     HealthIssuesPage(),
//     CookingPreferencesPage(),
//   ];
//   PageController _pageController = PageController(initialPage: 0);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("${_currentPageIndex + 1} of ${_pages.length}"),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             if (_currentPageIndex == 0) {
//               // Handle skip action on first page
//               Navigator.of(context).pushReplacementNamed('/home');
//             } else {
//               _pageController.previousPage(
//                   duration: Duration(milliseconds: 500), curve: Curves.ease);
//             }
//           },
//         ),
//         actions: [
//           TextButton(
//             child: Text("Skip"),
//             onPressed: () {
//               Navigator.of(context).pushReplacementNamed('/home');
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           SizedBox(height: 16),
//           LinearProgressIndicator(
//             value: (_currentPageIndex + 1) / _pages.length,
//             backgroundColor: Colors.grey[300],
//             valueColor: AlwaysStoppedAnimation<Color>(Color(0xffD62E1E)),
//           ),
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPageIndex = index;
//                 });
//               },
//               children: _pages,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class HealthIssuesPage extends StatefulWidget {
//   @override
//   _HealthIssuesPageState createState() => _HealthIssuesPageState();
// }

// class _HealthIssuesPageState extends State<HealthIssuesPage> {
//   bool _hasDiabetes = false;
//   bool _hasUlcer = false;
//   bool _hasHypertension = false;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "Do you have any health issues listed below?",
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 16),
//           TextButton(
//             onPressed: () {
//               setState(() {
//                 _hasDiabetes = !_hasDiabetes;
//               });
//             },
//             child: Row(
//               children: [
//                 Checkbox(
//                   value: _hasDiabetes,
//                   onChanged: (value) {
//                     setState(() {
//                       _

import 'package:flutter/material.dart';

class CookingPreferencesPage extends StatefulWidget {
  const CookingPreferencesPage({Key? key}) : super(key: key);

  @override
  _CookingPreferencesPageState createState() => _CookingPreferencesPageState();
}

class _CookingPreferencesPageState extends State<CookingPreferencesPage> {
  final List<String> _preferences = [];
  final Map<String, bool> _checkBoxValues = {
    'I want to eat healthy': false,
    'I want to get inspired': false,
    'I want to learn how to cook': false,
    'I want quick and easy recipes': false,
    'I want budget-friendly recipes': false,
    'I want to plan my meals better': false,
    'I want to be adventurous': false,
  };

  void _onCheckBoxChanged(String preference, bool value) {
    setState(() {
      if (value) {
        _preferences.add(preference);
      } else {
        _preferences.remove(preference);
      }
      _checkBoxValues[preference] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            // Navigate back to the previous page
          },
          child: const Text('Skip'),
        ),
        title: const Text('2 of 2'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          LinearProgressIndicator(
            backgroundColor: Colors.grey[300],
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffD62E1E)),
            value: 1,
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'What is most important to you when cooking?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              children: _checkBoxValues.keys
                  .map(
                    (preference) => CheckboxListTile(
                      title: Text(preference),
                      value: _checkBoxValues[preference],
                      onChanged: (value) {
                        _onCheckBoxChanged(preference, value!);
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the home page
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xffD62E1E),
              ),
              child: const Text('Continue'),
            ),
          ),
        ],
      ),
    );
  }
}

// This page contains a list of checkboxes for the user to select their cooking preferences. 
// The user can select multiple preferences, which will be stored in the _preferences list. 
// The CheckboxListTile widgets are created dynamically based on the _checkBoxValues map. 
// The _onCheckBoxChanged function updates the state when a checkbox is checked or unchecked.

// The Continue button at the bottom of the page navigates to the home page. 
// The Skip button in the app bar navigates back to the previous page.
