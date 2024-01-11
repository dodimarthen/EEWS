import 'package:flutter/material.dart';

class EEWSScreenOut extends StatefulWidget {
  const EEWSScreenOut({super.key});

  @override
  State<EEWSScreenOut> createState() => _EEWSScreenOutState();
}

class _EEWSScreenOutState extends State<EEWSScreenOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('EEWS BMKG'),
      backgroundColor: Colors.black87,
      ),
      body : Container(
        margin: EdgeInsets.all(100.0),
        decoration: BoxDecoration(
          color: Color.fromARGB(237, 253, 247, 247),
          shape: BoxShape.circle
        ),
      ),
      backgroundColor: Colors.white24,
    );
  }
}