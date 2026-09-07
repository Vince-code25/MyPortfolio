import 'package:flutter/material.dart';
import '../theme.dart';

/// Shared page frame: consistent padding, a thin divider under the
/// title, and content pinned to the bottom via [footer] (the action
/// button on each wireframe screen).
class PageScaffold extends StatelessWidget {
  final String title;
  final Widget content;
  final Widget footer;
  final bool showBackArrow;

  const PageScaffold({
    super.key,
    required this.title,
    required this.content,
    required this.footer,
    this.showBackArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (showBackArrow && Navigator.canPop(context))
                IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  icon: const Icon(Icons.arrow_back,
                      color: AppColors.ink, size: 20),
                  onPressed: () => Navigator.pop(context),
                ),
              Text(title, style: AppTextStyles.title),
              const SizedBox(height: 8),
              const Divider(height: 24, thickness: 1),
              Expanded(child: SingleChildScrollView(child: content)),
              const SizedBox(height: 16),
              footer,
            ],
          ),
        ),
      ),
    );
  }
}
