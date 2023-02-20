import 'package:flutter/material.dart';

class CardPage extends StatefulWidget{
  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          height: 80,
          width: 300,
          child: Card(
            color: Colors.black,
            shape:BeveledRectangleBorder(
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),bottomRight: Radius.circular(30))
            ),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 25,horizontal: 30),
              child: Text("HEllo wordl",style: TextStyle(color: Colors.white,fontSize: 20),),
            )
          ),
        ),
      ),
    );
  }
}