// onboarding_screen3.dart
import 'package:cic/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'CustomNavigationDots.dart'; // Import your custom navigation bar

class OnboardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1976D2), // blue background
      body: Column(
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Our Retirement Plan helps you secure your future by ensuring that "
              "you have enough funds for a comfortable life after retirement.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Spacer(),
          CustomNavigationDots(
            currentScreen: 3, // Third screen (index 2)
            totalScreens: 4,
            isLastScreen: true, // Set this to true as it's the last screen
            onProceedPressed: () {
              // Navigate to the login screen when "Proceed" is pressed
              Navigator.pushReplacement(
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
        ],
      ),
    );
  }
}
