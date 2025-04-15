import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Practical - 7"),
          foregroundColor: Colors.black87,
        ),

        body: LoginPage(),
      ),
    ),
  );
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Login Page'));
  }
}
