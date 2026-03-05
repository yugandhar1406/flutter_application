import 'package:flutter/material.dart';

class Facebookpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Facebookpage",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
