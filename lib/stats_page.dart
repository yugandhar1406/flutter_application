import 'package:flutter/material.dart';

class StatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "STATS",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(text: "Day"),
              Tab(text: "Week"),
              Tab(text: "Month"),
            ],
          ),
        ),

        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(30),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 50,
                mainAxisSpacing: 50,
                children: [
                  statCard("Heart Rate", "120 bpm", Colors.orange),
                  statCard("Sleep", "8 h", Colors.green),
                  statCard("Calories", "582 kcal", Colors.blue),
                  statCard("Steps", "16741", Colors.red),
                  statCard("Worktime", "1 h", Colors.purple),
                  statCard("running", "15 MIN", Colors.black),
                ],
              ),
            ),

            const Center(
              child: Text("This is Week Page", style: TextStyle(fontSize: 20)),
            ),

            const Center(
              child: Text("This is Month Page", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }

  Widget statCard(String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(150),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(color: Colors.white70, fontSize: 16),
          ),
          const SizedBox(height: 15),
          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
