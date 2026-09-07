import 'package:flutter/material.dart';
import '../theme.dart';

/// A single flat, rectangular button style used everywhere in the app.
/// Matches the boxed buttons drawn on the whiteboard wireframe
/// ("ABOUT ME", "My Skills", "My Project", "Contact Me").
class MinimalButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const MinimalButton(
      {super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(label, style: AppTextStyles.button),
      ),
    );
  }
}
