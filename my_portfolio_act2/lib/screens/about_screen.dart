import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/minimal_button.dart';
import '../widgets/page_scaffold.dart';
import 'skills_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'About Me',
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/logo.jpeg',
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            const Text(
              'I\'m an IT student who enjoys building clean, functional '
              'software and exploring how design and systems work together. '
              'This portfolio walks through a bit about who I am, what I can '
              'do, and the work I\'ve built along the way.',
              style: AppTextStyles.body,
            ),
          ],
        ),
      ),
      footer: MinimalButton(
        label: 'My Skills',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const SkillsScreen()),
          );
        },
      ),
    );
  }
}
