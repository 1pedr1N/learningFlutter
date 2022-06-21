import 'package:flutter/material.dart';
import 'package:flutter_learning/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            AppController.instance.isDartTheme ? Colors.black26 : Colors.red,
        title: Text('Pedro Dev <3'),
      ),
      body: Center(
        child: Switch(
            value: AppController.instance.isDartTheme,
            onChanged: (value) {
              setState(() {
                AppController.instance.changeTheme();
              });
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
