import 'package:cic/screens/onboarding_screen1.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen2.dart'; // Importing the second screen
import 'package:cic/screens/login_screen.dart'; // Importing login screen
import 'CustomNavigationDots.dart'; // Importing the custom navigation bar with dots

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC107), // Yellow background
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
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
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "CIC Insurance Group is the leading co-operatives insurer in Africa...",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.5, // Line height for better readability
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomNavigationDots(
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
          ),
        ],
      ),
    );
  }
}
