import 'package:flutter/material.dart';
import 'package:grillax/constants.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset('icons/signin.png'),
            ),
            SizedBox(height: 20,),

            Text('Grillax', style: TextStyle(fontSize: 26,fontFamily:"Montserrat"),),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left:50,right:50),
              child: RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
                text: 'We greatly appreciate your choice of dining with us and we promise to serve you with your excellence',
              ),
              ),
            ),
            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),
                text: 'Sign',
                children: <TextSpan>[
                  TextSpan(text: 'in', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepOrange),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text('Sign In to Your Account',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300 ),),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 40,right: 60),
              child: TextFormField(
                cursorColor: Colors.black,
                textAlign: TextAlign.center,
                maxLength: 10,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Your Mobile Number',
                  focusColor: Colors.black54,
                  disabledBorder: InputBorder.none,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black54,
                      ),
                      borderRadius:BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('Already have an OTP',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.deepOrange ),),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.only(left:50,right:50),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300),
                  text: 'By register,you agree to Terms & conditions',
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 32,
              width: 240,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(7),
              ),
              child:Text('GET OTP',
                textAlign: TextAlign.center,

                style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300,color: Colors.white ),),
            ),
          ],
        )
      ),
    );
  }
}
