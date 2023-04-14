import 'package:flutter/material.dart';

class FormModal extends StatelessWidget {
  final String title;
  final Widget child;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;

  const FormModal({
    Key? key,
    required this.title,
    required this.child,
    this.onConfirm,
    this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(
                onPressed: () => Navigator.of(context).pop(),
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(title),
                const SizedBox(height: 20),
                Expanded(child: child),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: onCancel,
                  child: const Text('Cancel'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: onConfirm,
                  child: const Text('Confirm'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
