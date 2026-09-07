import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/minimal_button.dart';
import '../widgets/page_scaffold.dart';
import 'contact_screen.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'SysArch Project',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Title', style: AppTextStyles.label),
          SizedBox(height: 4),
          Text(
            'PawConnect: Pet Adoption System',
            style: AppTextStyles.body,
          ),
          SizedBox(height: 20),
          Text('Abstract', style: AppTextStyles.label),
          SizedBox(height: 4),
          Text(
            'The Pet Adoption Management System is a web-based application that helps'
            'people find and adopt pets more easily.'
            'Users can browse available pets, view their'
            'details, submit adoption applications, '
            'and upload required documents online. '
            'They can also check the status of their application and receive updates.'
            'For staff members, the system provides tools to manage pet information, reviewadoption applications,'
            'verify documents, and update adoption records.'
            'This system makes the adoption process faster, more organized, and easier for both adopters and shelter staff.',
            style: AppTextStyles.body,
          ),
        ],
      ),
      footer: MinimalButton(
        label: 'Contact Me',
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const ContactScreen()),
          );
        },
      ),
    );
  }
}
