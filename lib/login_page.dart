// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(8),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(Icons.account_balance_outlined),
              Container(
                height: 100,
              ),
              TextField(
                onChanged: (text) {
                  email = text;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              Container(
                height: 50,
              ),
              TextField(
                onChanged: (text) {
                  password = text;
                },
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              Container(
                height: 25,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey,
                      shadowColor: Colors.black,
                      fixedSize: Size(300, 50)),
                  onPressed: () {
                    if (email == 'master@mail.com' && password == 'master') {
                      print('hacker man');
                    } else {
                      print('sai daqui boboca');
                    }

                    ;
                  },
                  child: Text('Join'))
            ]),
          ),
        ),
      ),
    );
  }
}
