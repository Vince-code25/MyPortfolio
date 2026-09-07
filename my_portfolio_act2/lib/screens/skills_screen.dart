import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/minimal_button.dart';
import '../widgets/page_scaffold.dart';
import 'project_screen.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  static const List<Map<String, String>> skills = [
    {
      'title': 'Systems Analysis & Design',
      'desc': 'Mapping processes into clear, workable system architecture.'
    },
    {
      'title': 'Database Optimization',
      'desc': 'Tuning complex queries and indexing schemas for maximum performance.'
    },
    {
      'title': 'Database Design',
      'desc': 'Structuring relational data for real-world applications.'
    },
    {
      'title': 'UI/UX Wireframing',
      'desc': 'Sketching flows before writing a single line of code.'
    },
    {
      'title': 'Project Documentation',
      'desc': 'Writing clear technical documentation for teams.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'My Skills',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final skill in skills) ...[
            Text(skill['title']!, style: AppTextStyles.label),
            const SizedBox(height: 4),
            Text(skill['desc']!, style: AppTextStyles.body),
            const SizedBox(height: 16),
            const Divider(height: 1),
            const SizedBox(height: 16),
          ],
        ],
      ),
      footer: MinimalButton(
        label: 'My Project',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ProjectScreen()),
          );
        },
      ),
    );
  }
}
