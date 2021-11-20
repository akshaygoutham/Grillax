import 'package:flutter/material.dart';
import 'package:grillax/constants.dart';
import 'package:grillax/screen/dart/Cart.dart';
import 'package:grillax/screen/dart/Grid.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(6.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Center(child: Text("abcd")),
              ),
              GridView(),


                ],
              ),
        ),
      ),
    );
  }
}
