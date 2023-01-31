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
              SizedBox(
                width: 200,
                height: 200,
                child: Image.network(
                    'data:image/jpeg;base64,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'),
              ),
              Container(
                height: 30,
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
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else {
                      Text('Sai dae man');
                    }
                  },
                  child: Text('Join'))
            ]),
          ),
        ),
      ),
    );
  }
}
