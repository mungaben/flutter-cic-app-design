import 'package:flutter/material.dart';

class CustomNavigationDots extends StatelessWidget {
  final int currentScreen;
  final int totalScreens;
  final Function()? onNextPressed;
  final Function()? onProceedPressed;
  final bool isLastScreen;
  final Function()? onSkipPressed; // Add a callback for Skip button

  const CustomNavigationDots({
    super.key,
    required this.currentScreen,
    required this.totalScreens,
    this.onNextPressed,
    this.onProceedPressed,
    this.isLastScreen = false,
    required this.onSkipPressed, // Skip function required
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 20, horizontal: 20), // Proper padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Skip button, always visible except on the last screen
          if (!isLastScreen)
            TextButton(
              onPressed: onSkipPressed, // Skip to login screen
              child: const Text(
                'SKIP',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16, // Ensure font size matches design
                  fontWeight: FontWeight.bold, // Make text bold
                ),
              ),
            ),
          if (isLastScreen)
            const SizedBox(), // Invisible placeholder on the last screen

          // Dots Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(totalScreens, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 5), // Slightly larger space between dots
                width: currentScreen == index
                    ? 12
                    : 8, // Slightly larger active dot
                height: currentScreen == index
                    ? 12
                    : 8, // Matching height for active/inactive dots
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentScreen == index
                      ? Colors.yellow // Active dot color is yellow
                      : Colors.white.withOpacity(0.5), // Inactive dot color
                ),
              );
            }),
          ),

          // Next or Proceed button
          isLastScreen
              ? ElevatedButton(
                  onPressed: onProceedPressed,
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20), // Button padding
                    backgroundColor: Colors.yellow, // Button background color
                  ),
                  child: const Text(
                    'PROCEED',
                    style: TextStyle(
                      color: Colors.black, // Text color on yellow background
                      fontSize: 16, // Font size for "PROCEED"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : TextButton(
                  onPressed: onNextPressed,
                  child: const Text(
                    'NEXT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16, // Font size for "NEXT"
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
