import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grillax/HomePage.dart';
import 'package:grillax/RestAPI/product.api.dart';
import 'package:grillax/constants.dart';
import 'package:grillax/screen/dart/BottomNavigation.dart';
import 'package:grillax/screen/dart/Grid.dart';
import 'package:http/http.dart'as http;

import '../../Widget.dart';
import 'Cart.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchDatum();
  }
  Future<Prod> fetchDatum()async{
    var url = "https://api.foodsign.apps.eximuz.com/api/v1/customers/catalog/products?page=1&per_page=12";
    var res = await http.get(url);
    var message = jsonDecode(res.body);
    return Prod.fromJson(message);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
          style: TextStyle(
            color: Colors.black,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
            fontSize: 20,

          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          InkWell(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'icons/custom-search.svg',
                  width: 18,
                  height: 18,
                )),
            onTap: () {},
          ),
          InkWell(
            child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'icons/custom-grid.svg',
                  width: 18,
                  height: 18,
                )
            ),
            onTap: () {},
          ),
          SizedBox(
            width: 13,
          )
        ],
      ),


      body: FutureBuilder(
        future: fetchDatum(),
        builder: (context , snapshot){
          List<Datum> data = snapshot.data.data.data;
          print(data);
          if(snapshot.hasData){
            return Container(
              child: GridView.builder(
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      crossAxisSpacing: 6.0,
                      mainAxisSpacing: 6.0,
                      maxCrossAxisExtent: 300,
                      childAspectRatio: 2 / 3),
                  padding: EdgeInsets.all(10),
                  itemCount: 15,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      // alignment: Alignment.bottomCenter,
                      color: Colors.white,
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 5,
                            left: 5,
                            child: Image.asset(
                              'icons/non_veg.jpg',
                              height: 15,
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Image.asset('icons/wishlist.jpg', height: 20),
                          ),
                          Positioned(
                            top: 40,
                            bottom: 125,
                            left: 40,
                            right: 40,
                            child: Container(
                              height: 150,
                              width: 100,
                              color: Colors.transparent,
                              child: ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                child: Image.network(data[index].imageUrl,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 35,
                            bottom: 103,
                            child: Text(data[index].productName,
                              style:
                              TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            bottom: 85,
                            left: 50,
                            child: RatingBarIndicator(
                              unratedColor: Colors.deepOrange,
                              itemCount: 5,
                              itemSize: 12,
                              itemBuilder: (context, index) => Icon(Icons.star),
                            ),
                          ),
                          Positioned(
                            left: 57,
                            bottom: 65,
                            child: Text(
                              'Rs.320.0',
                              style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Positioned(
                            left: 33,
                            bottom: 45,
                            child: Text(
                              ' Available From 1pm - 7 pm  ',
                              style: TextStyle(fontSize: 8),
                            ),
                          ),
                          Positioned(
                            left: 30,
                            bottom: 10,
                            top: 210,
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.black, width: 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              child: Text(
                                'ADD TO CART',
                                style: TextStyle(fontSize: 11, color: Colors.black),
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              ),
            );
          }else{
            return Container();
          }
        },
      ),
      // bottomNavigationBar: bottomNavigationBar,

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.filter_list_alt),
        onPressed: () {
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
        },
      ),
    );
  }
}
