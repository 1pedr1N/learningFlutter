// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_learning/app_controller.dart';
import 'package:flutter_learning/home_page.dart';
import 'login_page.dart';

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
            initialRoute: '/',
            routes: {
              '/': (context) => LoginPage(),
              '/home': (context) => HomePage()
            },
          );
        });
  }
}
