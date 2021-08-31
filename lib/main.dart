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
              RaisedButton(
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print('Raised Button is Pressed');
                },
                child: Text('A Raised Button'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black, // primary me background color cover,
                    onPrimary: Colors.orange),

                // ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all(Colors.black),
                //     foregroundColor: MaterialStateProperty.all(Colors.red),),
                // automatically gest color of your theme color.
                onPressed: () {},
                child: Text('Elevated Button'),
              ),
              FlatButton(
                textColor: Colors.blue,
                onPressed: () {
                  print('Flat Button is Pressed');
                },
                child: Text('A Flat Button'),
              ),
              TextButton(
                // text button me background color nahi hota hamne yahan add kiya lekin hota nahi.iska primary text pe apply hota hai.
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                ),
                onPressed: () {},
                child: Text('Text Button'),
              ),
              OutlineButton(
                borderSide: BorderSide(color: Colors.blue),
                onPressed: () {
                  print('Outline Button is Pressed');
                },
                textColor: Colors.blue,
                child: Text('Outline Button'),
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  primary: Colors.orange, // iska primary text pe apply.
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
