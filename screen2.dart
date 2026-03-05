import 'package:flutter/material.dart';
import 'screen3.dart';

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 2")),
      body: Center(
        child: Text(
          "Home Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.person),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScreenThree()),
          );
        },
      ),
    );
  }
}
