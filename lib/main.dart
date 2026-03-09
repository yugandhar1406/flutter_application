import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive App',
      home: ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatefulWidget {
  const ResponsivePage({super.key});

  @override
  State<ResponsivePage> createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  List<String> items = List.generate(10, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text("Screen Width: $width")),

      body: width < 600
          ? ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(items[index]),

                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                  },

                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.delete, color: Colors.white),
                  ),

                  child: Card(
                    margin: EdgeInsets.all(10),
                    child: ListTile(title: Text(items[index])),
                  ),
                );
              },
            )
          : GridView.builder(
              padding: EdgeInsets.all(10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(items[index]),

                  onDismissed: (direction) {
                    setState(() {
                      items.removeAt(index);
                    });
                  },

                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Icon(Icons.delete, color: Colors.white),
                  ),

                  child: Card(
                    child: Center(
                      child: Text(items[index], style: TextStyle(fontSize: 18)),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
