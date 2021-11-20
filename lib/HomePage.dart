import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grillax/constants.dart';
import 'package:grillax/screen/dart/BottomNavigation.dart';
import 'package:grillax/screen/dart/Cart.dart';
import 'package:grillax/screen/dart/FirstPage.dart';
import 'package:grillax/screen/dart/Grid.dart';
import 'package:grillax/screen/dart/HomeScreen,dart.dart';
import 'package:grillax/screen/dart/OrderPage.dart';
import 'package:grillax/screen/dart/ProductScreen.dart';
import 'package:grillax/screen/dart/ProfilePage.dart';

import 'Widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {

  int _currentIndex = 0;

  var isSelected = true;

  final screen = [
    FirstPage(),
    Products(),
    Cart(),
    OrderPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
            body: screen[_currentIndex],

// Drawer Start
            drawer: Drawer(
              elevation: 20,
              child: ListView(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(right: 150)),
                  Container(
                    color: primaryColor,
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          splashColor: Colors.transparent,
                          child: Text(
                            'Login/Register',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: ListTile(
                      leading: Icon(Icons.house_outlined),
                      title: Text('Home'),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.shopping_cart_outlined),
                    title: Text('My Cart'),
                  ),
                  ListTile(
                    leading: Icon(Icons.fastfood_outlined),
                    title: Text('Products'),
                  ),
                  ListTile(
                    leading: Icon(Icons.card_giftcard_outlined),
                    title: Text('Offers'),
                  ),
                  ListTile(
                    leading: Icon(Icons.call),
                    title: Text('Contact Us'),
                  ),
                  ListTile(
                    leading: Icon(Icons.login),
                    title: Text('Login'),
                  ),
                ],
              ),
            ),
            //Drawer End

            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                fixedColor: Colors.white,
                backgroundColor: Colors.deepOrange,
                onTap: (index) => setState(() => _currentIndex = index),
                currentIndex: _currentIndex,
                iconSize: 20.0,
                selectedFontSize: 9,
                unselectedFontSize: 9,

                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(

                    icon: Icon(Icons.house_outlined),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(

                    icon: Icon(
                      Icons.fastfood_outlined,
                    ),
                    label: 'Product',
                  ),
                  BottomNavigationBarItem(

                    icon: Icon(Icons.shopping_cart_outlined),
                    label: 'Cart',
                  ),
                  BottomNavigationBarItem(

                      icon: Icon(Icons.reorder),
                      label: 'Order'),
                  BottomNavigationBarItem(

                      icon: Icon(Icons.person_outline),
                      label: 'Profile'),
                ],
              ),
            ),
      ),
    );
  }
}
