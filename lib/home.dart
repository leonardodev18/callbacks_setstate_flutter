import 'package:callbacks_setstate_flutter/custom_drawer.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        page: page,
        onTap: (int value) {
          print(value);
          setState(() {
            page = value;
          });
          Navigator.pop(context);
        },
      ),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: IndexedStack(
        index: page,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.green),
          Container(color: Colors.pinkAccent),
        ],
      ),
    );
  }
}
