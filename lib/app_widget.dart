import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learning/app_controller.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget();
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
              theme: ThemeData(
                  primarySwatch: AppController.instance.isDartTheme
                      ? Colors.red
                      : Colors.red,
                  brightness: AppController.instance.isDartTheme
                      ? Brightness.dark
                      : Brightness.light),
              home: HomePage());
        });
  }
}
