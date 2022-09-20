import 'package:cw6/models/uni.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class UniScreen extends StatelessWidget {
  UniScreen({super.key, required this.uni});

  final Univesity uni;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 1, 1, 1),
      appBar: AppBar(
        title: Center(
            child: Text(
          uni.name + ' University',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Image.network(uni.imageURL),
      ),
    );
  }
}
