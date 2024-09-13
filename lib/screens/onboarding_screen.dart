import 'package:cic/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen1.dart'; // Importing the second screen
import 'CustomNavigationDots.dart'; // Importing the custom navigation bar with dots

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC107), // Yellow background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/cic_group_image.png',
            height: 250,
            width: 250,
          ),
          SizedBox(height: 20),
          Text(
            "Welcome to CIC",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "CIC Insurance Group is the leading co-operatives insurer in Africa...",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ),
          Spacer(),
          CustomNavigationDots(
            currentScreen: 0, // First screen
            totalScreens: 4,
            onNextPressed: () {
              // Navigate to the next screen (OnboardingScreen2)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingScreen1()),
              );
            },
            onSkipPressed: () {
              // Skip to the login screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
