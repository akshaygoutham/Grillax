import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grillax/screen/dart/Grid.dart';

import '../../constants.dart';
import 'Cart.dart';
import 'OrderPage.dart';
import 'ProductScreen.dart';
import 'ProfilePage.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: SafeArea(
      child: Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.all(40.0),
          child: Image.asset("icons/signin.png"),
        ),
        leading: InkWell(
          child: Padding(
              padding: EdgeInsets.all(18),
              child: SvgPicture.asset('icons/custom-menu.svg',
                  width: 17, height: 17)),
          onTap: () {
            // Scaffold.of(context).openDrawer();
          },
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: primaryColor,
        actions: [
          InkWell(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'icons/custom-search.svg',
                  width: 17,
                  height: 17,
                )),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'icons/noti.svg',
                  width: 17,
                  height: 17,
                )),
            onTap: () {},
          ),
          SizedBox(
            width: 3,
          )
        ],
        bottom: TabBar(
          onTap: null,
          // indicator: ,
          // indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.transparent,
          labelColor: Colors.black,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_pin,
                    size: 15,
                  ),
                  Text(
                    "address of the hotel",
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300),
                  ),
                  InkWell(
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        body: GridViews(),
    ),
      ),
    );
  }
}
