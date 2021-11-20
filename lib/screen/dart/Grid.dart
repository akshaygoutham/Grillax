import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:ui';
import 'package:grillax/RestAPI/post_catalog.dart';
import 'package:grillax/RestAPI/product.api.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:grillax/RestAPI/rest_api.dart';
import 'package:grillax/constants.dart';
import 'package:grillax/screen/dart/ProductScreen.dart';
import 'package:progress_indicators/progress_indicators.dart';


class GridViews extends StatefulWidget {
   const GridViews({Key key}): super(key: key);
  @override
  _GridViewsState createState() => _GridViewsState();
}
class _GridViewsState extends State<GridViews> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDatum();
  }

  Future<Prod> fetchDatum() async {
   var url ="https://api.foodsign.apps.eximuz.com/api/v1/customers/catalog/products?page=1&per_page=6";
   var res = await http.get(url);
   var message = jsonDecode(res.body);
   print(message);
   return Prod.fromJson(jsonDecode(res.body));
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchDatum(),
          builder: ( context , snapshot ) {
          List <Datum> data = snapshot.data.data.data;
            // print('perPage');
          // print(snapshot);

          if(snapshot.hasData) {
            return Container(
              color: primaryColor,
              child: ListView(
                // shrinkWrap: true,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
                children: <Widget>[
                  Center(child: Text("Products", style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500,fontFamily: "Montserrat",fontStyle: FontStyle.normal),),),
                  SizedBox(height: 2),
                  Stack(
                    children: <Widget>[
                      GridView.builder(
                          physics: ScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              crossAxisSpacing: 6.0,
                              mainAxisSpacing: 6.0,
                              maxCrossAxisExtent: 300,
                              childAspectRatio: 2 / 3
                          ),
                          padding: EdgeInsets.all(10),
                          itemCount: data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              // alignment: Alignment.bottomCenter,
                              color: Colors.white,
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    top: 5,
                                    left: 5,
                                    child: Image.asset(
                                      'icons/non_veg.jpg', height: 20,),
                                  ),
                                  Positioned(
                                    top: 5,
                                    right: 5,
                                    child: Image.asset(
                                        'icons/wishlist.jpg', height: 20),
                                  ),
                                  Positioned(
                                    top: 40,
                                    bottom: 125,
                                    left: 40,
                                    right: 40,
                                    child: Container(
                                      height: 90,
                                      width: 90,
                                      color: Colors.transparent,
                                      child: ClipRRect(
                                        clipBehavior: Clip.antiAlias,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        child: Image.network(data[index].imageUrl,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left:1,
                                    right: 1,
                                    bottom: 103,
                                    child: Text(data[index].productName ,style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                  ),

                                  Positioned(
                                    bottom: 85,
                                    left: 50,
                                    child: RatingBarIndicator(
                                      direction: Axis.horizontal,
                                      unratedColor: Colors.deepOrange,
                                      itemCount: 5,
                                      itemSize: 12,
                                      itemBuilder: (context, index) =>
                                          Icon(Icons.star),
                                    ),
                                  ),

                                  Positioned(
                                    right: 55,
                                    left: 55,
                                    bottom: 65,
                                    child: Text('\u{20B9}${data[index].productPrice.toString()}', style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,),
                                  ),


                                  Positioned(
                                    right: 1,
                                    left: 1,
                                    bottom: 45,
                                    child: Text(data[index].productAvailableOn.toString(),
                                      style: TextStyle(fontSize: 8),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),


                                  Positioned(
                                    right: 30,
                                    left: 30,
                                    bottom: 10,
                                    top: 210,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                            color: Colors.black, width: 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              25.0),),
                                      ),
                                      child: Text('ADD TO CART',
                                        style: TextStyle(fontSize: 11,fontFamily: "Montserrat fonts",
                                            fontStyle: FontStyle.normal,fontWeight: FontWeight.w300,color: Colors.black),textAlign: TextAlign.center,),
                                      onPressed: () {},
                                    ),
                                  ),

                                ],
                              ),
                            );
                          }
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(105, 10, 105, 10),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.deepOrange, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),),
                      ),
                      child: Text('VIEW ALL PRODUCTS',
                        style: TextStyle(fontSize: 11, color: Colors.black),textAlign: TextAlign.center),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => Products()));
                      },
                    ),
                  ),
                  Container(
                    height: 45,
                  )
                ],
              ),
            );
          }else{
            return Container(
              height: 400,

              color: Colors.transparent,
              child: JumpingDotsProgressIndicator(
                color: Colors.deepOrange,
                numberOfDots: 3,
                fontSize: 50.0,
                dotSpacing: 5.0,

              ),
            );
          }
          }
      ),
    );
  }
}


