import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/minimal_button.dart';
import '../widgets/page_scaffold.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: 'Contact Me',
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _ContactRow(label: 'Facebook', value: 'facebook.com/vincejason.haya'),
          _ContactRow(label: 'Instagram', value: '@vnztofu'),
          _ContactRow(label: 'Email', value: 'vyoshida.02@gmail.com'),
        ],
      ),
      footer: MinimalButton(
        label: 'Back to Homepage',
        onPressed: () {
          Navigator.popUntil(context, (route) => route.isFirst);
        },
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  final String label;
  final String value;

  const _ContactRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppTextStyles.label),
          const SizedBox(height: 4),
          Text(value, style: AppTextStyles.body),
          const SizedBox(height: 12),
          const Divider(height: 1),
        ],
      ),
    );
  }
}
