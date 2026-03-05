import 'package:flutter/material.dart';
import 'screen1.dart';

class ScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Screen 3")),
      body: Center(
        child: ElevatedButton(
          child: Text("Logout"),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Logout?"),
                  content: Text("Choose an option"),
                  actions: [
                    TextButton(
                      child: Text("Cancel"),
                      onPressed: () {
                        Navigator.pop(context); 
                        Navigator.pop(context); 
                      },
                    ),
                    TextButton(
                      child: Text("Login"),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => ScreenOne()),
                          (route) => false,
                        );
                      },
                    ),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
