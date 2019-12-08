
import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

var images = ["assets/gamepad.png","assets/lion.png","assets/music-player.png","assets/pizza-slice.png","assets/t-shirt.png","assets/zeus.png"];
var title = ["gamepad","lion","music","food","clothes","mythology"];

class Catagory {
  int CatagoryId;
  int id;
  String title;
  String pic;
  String thumbnailUrl;

  Catagory({this.CatagoryId, this.id, this.title, this.pic});

  // Return object from JSON //
  factory Catagory.fromJson(Map<String, dynamic> json) {
    return Catagory(
        CatagoryId: json['catagoryId'] as int,
        id: json['id'] as int,
        title: json['title'] as String,
        pic: json['pic'] as String);
  }
}

//class CatagoryScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return Scaffold(
//      backgroundColor: Colors.grey[600],
//      drawer: Drawer(
//      ),
//      appBar: AppBar(
//        title: Text("Catagory Screen", style: TextStyle(color: Colors.black),),
//        backgroundColor: Colors.amber[100],
//        centerTitle: true,
//        iconTheme: new IconThemeData(color: Colors.black),
//      ),
//      body: Center(
//
//      ),
//    );
//  }
//}
//
//
//class Products extends StatefulWidget {
//  final product_name;
//  final product_pic;
//
//  Products(
//      {this.product_name,this.product_pic}
//      );
//  @override
//  _ProductsState createState() => _ProductsState();
//}
//
//class _ProductsState extends State<Products> {
//  final list_item = [
//    {
//      "pic" : "assets/assets/gamepad.png",
//      "name" : "gamepad"
//    },
//    {
//      "pic" : "assets/lion.png",
//      "name" : "lion"
//    },
//    {
//      "pic" : "assets/music-player.png",
//      "name" : "music"
//    },
//    {
//      "pic" : "assets/pizza-slice.png",
//      "name" : "food"
//    },
//    {
//      "pic" : "assets/t-shirt.png",
//      "name" : "clothes"
//    },
//    {
//      "pic" : "assets/zeus.png",
//      "name" : "mythology"
//    },
//  ];
//  @override
//  Widget build(BuildContext context) {
//    return GridView.builder(
//        itemCount: list_item.length,
//        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//        itemBuilder: (BuildContext context,int index){
//            return Products(
//              product_pic: list_item[index] ['pic'],
//              product_name: list_item[index] ['name'],
//            );
//        });
//
//}





//class CatagoryScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    final title = 'Grid List';
//
//    return MaterialApp(
//      title: title,
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text(title),
//        ),
//        body: Container(
//          margin: EdgeInsets.fromLTRB(0, 30.0, 0, 0),
//          child: Padding(
//            padding: const EdgeInsets.all(15.0),
//            child: GridView.count(
//              // Create a grid with 2 columns. If you change the scrollDirection to
//              // horizontal, this produces 2 rows.
//              crossAxisCount: 2,
//              crossAxisSpacing: 10,
//              mainAxisSpacing: 10,
//              // Generate 6 widgets that display their title index in the List - this can be your array length.
//              children: List.generate(8, (index) {
//                return Center(
//                  child: Column(
//                      children: <Widget>[
//                        Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScDI-oN5NuYMe-Jxnou1U8ZyzBP_6dXTxx_DdB7Gcu_y9ksP-0aQ&s'),),
//                        Text(
//                          'Image Item $index',
//                          style: Theme.of(context).textTheme.headline,
//                        )
//                      ]),
//                );
//              }),
//            ),
//          ),
//        ),
//      ),
//    );
//  }
//}



