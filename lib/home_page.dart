import 'package:flutter/material.dart';
import 'facebook.dart';
import 'googl.dart';
import 'whatsapp.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Select App",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),

              ListTile(
                leading: const Icon(Icons.facebook, color: Colors.blue),
                title: const Text("Facebook"),
                onTap: () {
                  Navigator.pop(context);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Facebook clicked")),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Facebookpage()),
                  );
                },
              ),

              // GOOGLE
              ListTile(
                leading: const Icon(Icons.g_mobiledata, color: Colors.red),
                title: const Text("Google"),
                onTap: () {
                  Navigator.pop(context);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Google clicked")),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Googlepage()),
                  );
                },
              ),

              // WHATSAPP
              ListTile(
                leading: const Icon(Icons.phone, color: Colors.green),
                title: const Text("WhatsApp"),
                onTap: () {
                  Navigator.pop(context);

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("WhatsApp clicked")),
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Whatsapppage()),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("This is Home Page", style: TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showBottomSheet(context),
              child: const Text("Open bottom sheet"),
            ),
          ],
        ),
      ),
    );
  }
}
