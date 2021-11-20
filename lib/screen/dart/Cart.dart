import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grillax/constants.dart';
import 'package:grillax/screen/dart/FirstPage.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: primaryColor,
      body: Column(
        children: [
          Container(
              alignment:Alignment.topCenter,
              margin: EdgeInsets.only(
                left: 100,
                right: 100,
                top: 100
              ),

              child:SvgPicture.asset('icons/custom-no-item.svg',),
          ),
          Container(
              alignment:Alignment.topCenter,
              margin: EdgeInsets.only(
                top: 15
              ),
              child: Text('No item found!')),
        ],
      ),
      
      

    );
  }
}
