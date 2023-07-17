import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:providerstate/screen_two.dart';

class screenone extends StatefulWidget {
  // var name;
  screenone({
    super.key,
  });

  @override
  State<screenone> createState() => _screenoneState();
}

class _screenoneState extends State<screenone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments[0]),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
          ),
          Card(
            child: TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text('English')),
          ),
          Card(
            child: TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('ur', 'PK'));
                },
                child: Text('Urdu')),
          ),
          Center(
            child: Card(
              child: TextButton(
                  onPressed: () {
                    Get.to(screentwo(name: 'fazalpannu'));
                  },
                  child: Text('Go to Screen-two')),
            ),
          ),
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Card(
              child: Text('Go to Back'),
            ),
          ),
        ],
      ),
    );
  }
}
