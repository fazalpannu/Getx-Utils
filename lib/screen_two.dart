import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class screentwo extends StatefulWidget {
  final name;
  screentwo({super.key, required this.name});

  @override
  State<screentwo> createState() => _screentwoState();
}

class _screentwoState extends State<screentwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Column(
        children: [
          Center(
            child: TextButton(
                onPressed: () {
                  Get.back();
                  Get.back();
                },
                child: Text('Go to Screen-One')),
          ),
          Card(
            child: Text('Go to Back'),
          ),
        ],
      ),
    );
    ;
  }
}
