// CustomNavigationDots.dart
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
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Skip button, always visible except on the last screen
          !isLastScreen
              ? TextButton(
                  onPressed: onSkipPressed, // Skip to login screen
                  child: const Text(
                    'SKIP',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              : const SizedBox(),
          // Dots Indicator
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(totalScreens, (index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentScreen == index
                      ? Colors.white
                      : Colors.white.withOpacity(0.3),
                ),
              );
            }),
          ),
          // Next or Proceed button
          isLastScreen
              ? ElevatedButton(
                  onPressed: onProceedPressed,
                  child: const Text('PROCEED'),
                )
              : TextButton(
                  onPressed: onNextPressed,
                  child: const Text(
                    'NEXT',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
        ],
      ),
    );
  }
}
