import 'package:flutter/material.dart';

class EditTaskDialog extends StatelessWidget {
  final String initialText;
  final Function(String) onSave;
  
  EditTaskDialog({required this.initialText, required this.onSave});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController(text: initialText);

    return AlertDialog(
      title: const Text('Edit Task'),
      content: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          hintText: 'Enter new task name',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => onSave(_controller.text),
          child: const Text('Save'),
        ),
      ],
    );
  }
}
