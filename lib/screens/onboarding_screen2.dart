import 'package:flutter/material.dart';
import 'onboarding_screen3.dart';
import 'package:cic/screens/login_screen.dart';
import 'CustomNavigationDots.dart';

class OnboardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD32F2F), // red background
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
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
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "An annuity is a contract that converts a sum of money into periodic payments for "
                    "an agreed period. It's ideal for people nearing retirement.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.5, // Line height
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: CustomNavigationDots(
              currentScreen: 2, // Second screen
              totalScreens: 4,
              onNextPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen3()),
                );
              },
              onSkipPressed: () {
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
