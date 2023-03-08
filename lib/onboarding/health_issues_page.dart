import 'package:chopedia/onboarding/cooking_preferences_page.dart';
import 'package:flutter/material.dart';

class HealthIssuesPage extends StatefulWidget {
  const HealthIssuesPage({Key? key}) : super(key: key);

  @override
  _HealthIssuesPageState createState() => _HealthIssuesPageState();
}

class _HealthIssuesPageState extends State<HealthIssuesPage> {
  bool hasDiabetes = false;
  bool hasUlcer = false;
  bool hasHypertension = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(
          "1 of 2",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
        backgroundColor: const Color(0xffD62E1E),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Spacer(),
          const LinearProgressIndicator(
            value: 0.5,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xffD62E1E)),
          ),
          const Text(
            "Do you have any health issues listed below?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasDiabetes = !hasDiabetes;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: hasDiabetes
                          ? const Color(0xffD62E1E)
                          : Colors
                              .grey, // set the background color of the button
                      onPrimary: Colors.white, // set the text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Text('Diabetes')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasUlcer = !hasUlcer;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: hasDiabetes
                          ? const Color(0xffD62E1E)
                          : Colors
                              .grey, // set the background color of the button
                      onPrimary: Colors.white, // set the text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Text('Ulcer')),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      hasHypertension = !hasHypertension;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: hasDiabetes
                          ? const Color(0xffD62E1E)
                          : Colors
                              .grey, // set the background color of the button
                      onPrimary: Colors.white, // set the text color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  child: const Text('Hypertension')),
            ],
          ),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CookingPreferencesPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: const Color(
                  0xffD62E1E), // set the background color of the button
              onPrimary: Colors.white,
            ),
            child: const Text("Continue"),
          ),
        ],
      ),
    );
  }
}
