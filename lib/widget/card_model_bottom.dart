import 'package:flutter/material.dart';

class ModelBottom extends StatelessWidget {
  final void Function(String) addTask;
  final TextEditingController _textEditingController = TextEditingController();

  ModelBottom({
    super.key,
    required this.addTask,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Your Task',
              ),
              onSubmitted: (_) => _handleOnClick(context),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _handleOnClick(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                child: const Text('Add Task',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _handleOnClick(BuildContext context) {
    final text = _textEditingController.text;
    if (text.isNotEmpty) {
      addTask(text);
      _textEditingController.clear();
      Navigator.of(context).pop();
    }
  }
}
