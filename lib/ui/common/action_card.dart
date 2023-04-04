import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? trailing;
  final VoidCallback? onTap;

  const ActionCard({
    Key? key,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: trailing != null ? Text(trailing!) : null,
        onTap: onTap,
      ),
    );
  }
}