// onboarding_screen2.dart
import 'package:cic/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen3.dart';
import 'CustomNavigationDots.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD32F2F), // red background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/annuity_plan_image.png',
            height: 250,
            width: 250,
          ),
          SizedBox(height: 20),
          Text(
            "CIC Annuity Plan",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "An annuity is a contract that converts a sum of money into periodic payments for "
              "an agreed period. It's ideal for people nearing retirement.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          Spacer(),
          CustomNavigationDots(
            currentScreen: 2, // First screen
            totalScreens: 4,
            onNextPressed: () {
              // Navigate to the next screen (OnboardingScreen2)
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnboardingScreen3()),
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
