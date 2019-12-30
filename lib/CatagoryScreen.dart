import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:odd_one_out/AnimalIntroScreen.dart';
import 'package:odd_one_out/ClothesIntroScreen.dart';
import 'package:odd_one_out/FoodIntroScreen.dart';
import 'package:odd_one_out/GameIntroScreen.dart';
import 'package:odd_one_out/InputScreen.dart';
import 'package:odd_one_out/MusicIntroScreen.dart';
import 'package:odd_one_out/MythologyIntroScreen.dart';
import 'package:odd_one_out/TutorialScreen.dart';

var inputScreen = new InputScreen();

//var screens = [AnimalIntroScreen(),ClothesIntroScreen(),FoodIntroScreen(),GameIntroScreen(),MusicIntroScreen(),MythologyIntroScreen()];
var names = ["AnimalIntroScreen","ClothesIntroScreen","FoodIntroScreen","GameIntroScreen","MusicIntroScreen","MythologyIntroScreen"];
//var images = ["assets/lion.png","assets/t-shirt.png","assets/pizza-slice.png","assets/gamepad.png", ];
Orientation orientation;

class CatagoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[600],
        drawer: Drawer(
        ),
        appBar: AppBar(
          title: Text("Odd One Out", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
        ),
          body: Center(

            child: Container(
              margin: EdgeInsets.only(top: 50),
              child: GridView.builder(
                 padding: EdgeInsets.all(10.0),
                itemCount: names.length == null?0:names.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: orientation == Orientation.portrait ?2:2),
                itemBuilder: (BuildContext context, int index){
                  return Card(
                    child: new Padding(padding: EdgeInsets.all(5.0),
//                  child: Image(image: new AssetImage(images[index]),),
                    child: Text(names[index])

                    ),
                  );
                }
              ),
            ),

          ),

        );
  }

}