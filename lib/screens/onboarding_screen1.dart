import 'package:cic/screens/CustomNavigationDots.dart';
import 'package:cic/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen2.dart'; // For navigating to the next screen

class OnboardingScreen1 extends StatelessWidget {
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
                    'assets/guaranteed_fund_image.png', // Replace with your image path
                    height: 250,
                    width: 250,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Guaranteed Fund",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "CIC Guaranteed Fund is best suited to enable the scheme achieve "
                    "diversification, cost savings and guaranteed capital by pooling "
                    "with other funds.",
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
              currentScreen: 1, // First screen (index 0)
              totalScreens: 4,
              onNextPressed: () {
                // Navigate to the next screen (OnboardingScreen2)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingScreen2()),
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
