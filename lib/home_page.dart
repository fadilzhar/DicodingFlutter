import 'package:flutter/material.dart';
import 'add_name.dart';

class HomePage extends StatelessWidget {
  final List<String> names = ["Alice", "Bob", "Charlie"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(names[index]),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddNamePage()),
              );
            },
            child: Text('Add Name'),
          ),
        ],
      ),
    );
  }
}
