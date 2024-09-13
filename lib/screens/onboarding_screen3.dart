import 'package:flutter/material.dart';
import 'package:cic/screens/login_screen.dart'; // Importing login screen
import 'CustomNavigationDots.dart'; // Importing the custom navigation bar with dots

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1976D2),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/retirement_plan_image.png',
                    height: 250,
                    width: 250,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "CIC Retirement Plan",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Our Retirement Plan helps you secure your future by ensuring "
                    "that you have enough funds for a comfortable life after retirement.",
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
              currentScreen: 3, // First screen
              totalScreens: 4,
              onNextPressed: () {
                // Navigate to the next screen (OnboardingScreen2)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
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
