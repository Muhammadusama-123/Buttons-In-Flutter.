// In this project I will show you how to impliment differnt kinds of buttons in flutter.


import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Code for RaisedButton:

              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('Raised Button is Pressed');
                },
                child: Text('A Raised Button'),
              ),



              // Code for ElevatedButton:

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    onPrimary: Colors.orange),

                // Alternative way of styling of a button.

                //Note: this alternate way is also applied for all kinds of buttons. 

                // ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all(Colors.black),
                //     foregroundColor: MaterialStateProperty.all(Colors.red),),
                // automatically gest color of your theme color.
                

                onPressed: () {},
                child: Text('Elevated Button'),
              ),





              // Code for FlatButton Button:

              FlatButton(
                textColor: Colors.blue,
                onPressed: () {
                  print('Flat Button is Pressed');
                },
                child: Text('A Flat Button'),
              ),




              // Code for TextButton:

              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Text('Text Button'),
              ),




              // Code for OutlineButton:

              OutlineButton(
                borderSide: BorderSide(color: Colors.blue),
                onPressed: () {
                  print('Outline Button is Pressed');
                },
                textColor: Colors.blue,
                child: Text('Outline Button'),
              ),




              // Code for OutlinedButton:

              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  side: BorderSide(color: Colors.black),
                ),
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
