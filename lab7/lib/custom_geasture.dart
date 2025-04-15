import 'package:flutter/material.dart';

class custom_geasture extends StatefulWidget {
  const custom_geasture({super.key});

  @override
  State<custom_geasture> createState() => _custom_geastureState();
}

class _custom_geastureState extends State<custom_geasture> {
  Color color1 = Colors.orange;
  String displayText = 'Orange';
  IconData icn = Icons.temple_hindu_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Custom Geasture")),
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (color1 == Colors.orange) {
              color1 = Colors.blue;
              displayText = 'Blue';
              icn = Icons.radar;
            } else if (color1 == Colors.blue) {
              color1 = Colors.green;
              displayText = 'Green';
              icn = Icons.add_business;
            } else {
              color1 = Colors.orange;
              displayText = 'Orange';
              icn = Icons.temple_hindu_rounded;
            }
          });
        },
        child: Center(
          child: Container(
            height: 1000,
            width: 1000,
            color: color1,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(icn, size: 50, color: Colors.white),
                  Text(
                    displayText,
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
