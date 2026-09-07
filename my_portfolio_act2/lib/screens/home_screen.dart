import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/minimal_button.dart';
import 'about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Haya, Vince Jason', style: AppTextStyles.title),
              const SizedBox(height: 6),
              const Text('BS Information Technology',
                  style: AppTextStyles.subtitle),
              const SizedBox(height: 2),
              const Text('Global Reciprocal Colleges',
                  style: AppTextStyles.subtitle),
              const Spacer(),
              MinimalButton(
                label: 'About Me',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const AboutScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
