import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Services"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello jsdhh"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
