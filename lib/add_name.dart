import 'package:flutter/material.dart';

class AddNamePage extends StatefulWidget {
  @override
  _AddNamePageState createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  final TextEditingController _controller = TextEditingController();

  void _addName(BuildContext context) {
    String name = _controller.text;
    if (name.isNotEmpty) {
      // Return name to previous screen
      Navigator.pop(context, name);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Name'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(labelText: 'Enter Name'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _addName(context),
              child: Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}
