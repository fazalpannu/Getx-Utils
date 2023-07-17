import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:providerstate/screen_one.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
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
          Card(
            child: TextButton(
              onPressed: () {
                // Get.to(screenone(
                //   name: 'Fazal',
                // ));

                Get.toNamed('/page1', arguments: ['Fazal']);
              },
              child: Text('-----    Go to screen 1   ----      '),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('GETX Dialog'),
              subtitle: Text('You known about Flutter!'),
              onTap: () {
                Get.defaultDialog(
                    title: 'fazal',
                    middleText:
                        'afshhhhhhhhhhhhhhhhhhhhhhhhhhj    kjasdhfsdfjksdfjksdfjk',
                    contentPadding: EdgeInsets.all(8),
                    titlePadding: EdgeInsets.only(top: 8),
                    confirm: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text('OK')),
                    content: Column(
                      children: [
                        Text('OK'),
                        Text('OK'),
                        Text('OK'),
                        Text('OK'),
                        Text('OK'),
                        Text('OK'),
                        Text('OK')
                      ],
                    ),
                    cancel:
                        TextButton(onPressed: () {}, child: Text('CANCEL')));
              },
            ),
          ),
          Card(
            child: ListTile(
                title: Text('GETX BOTTTOM_SHEET'),
                subtitle: Text('You known about Flutter!'),
                onTap: () {
                  Get.bottomSheet(
                    backgroundColor: Colors.pink,
                    Container(
                      child: Column(
                        children: [
                          Card(
                            child: ListTile(
                                title: Text('GETX BOTTTOM_SHEET'),
                                subtitle: Text('Light Theme!'),
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                }),
                          ),
                          Card(
                            child: ListTile(
                                title: Text('GETX BOTTTOM_SHEET'),
                                subtitle: Text('Dark Theme !'),
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                }),
                          ),
                          Card(
                            child: ListTile(
                                title: Text('GETX BOTTTOM_SHEET'),
                                subtitle: Text('You known about Flutter!'),
                                onTap: () {}),
                          ),
                          Card(
                            child: ListTile(
                                title: Text('GETX BOTTTOM_SHEET'),
                                subtitle: Text('You known about Flutter!'),
                                onTap: () {}),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Get.snackbar(
            'fazalpannu',
            'Hey',
            colorText: Colors.amber,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.cyan,
            icon: Icon(Icons.add),
            onTap: (snack) {},
          );
        },
      ),
    );
  }
}
