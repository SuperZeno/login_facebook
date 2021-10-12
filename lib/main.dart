import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(Facebook());
}

class Facebook extends StatefulWidget {
  const Facebook({Key? key}) : super(key: key);

  @override
  _FacebookState createState() => _FacebookState();
}

int _num = 0;
bool _like = false;
bool _comment = false;
bool _share = false;

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text('Log In'),
          ),
          body: Column(

            children: [
              SizedBox(height: 100,),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook,size: 60,color: Colors.blue,),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right:10),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'e-mail',
                    hintText: 'enter email address',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: 'Password',
                    hintText: 'enter The password',
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 100,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Sign Up For Facebook',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot Password ?',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
        ));
  }
}
