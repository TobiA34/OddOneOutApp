import 'dart:ui';

import 'package:flutter/material.dart';



class TutorialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[600],
//      drawer: Drawer(
//      ),
      appBar: AppBar(
        title: Text("TutorialScreen", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.amber[100],
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: new ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50.0,left: 60.0),
              child: Text("How to play odd one out", style: TextStyle(color:Colors.black,fontSize: 32.0,fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              height: 120.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage("assets/group.png"),
                 ),
              ),

              ),

            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              child: new ListTile(
                leading: new MyBullet(),
                title: new Text('Make sure you play with a group of people.',style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              height: 120.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage("assets/secret.png"),
                ),
              ),

            ),

            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              child: new ListTile(
                leading: new MyBullet(),
                title: new Text('All players have a secret word.',style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              height: 120.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage("assets/man.png"),
                ),
              ),

            ),

            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              child: new ListTile(
                leading: new MyBullet(),
                title: new Text('One player is the odd one out',style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              height: 120.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new AssetImage("assets/confused.png"),
                ),
              ),

            ),

            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              child: new ListTile(
                leading: new MyBullet(),
                title: new Text('Guess who is the odd one out',style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Text("How to win", style: TextStyle(color:Colors.black,fontSize: 32.0,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            ),

            Container(
              margin: EdgeInsets.only(top: 50.0,left: 35.0),
              child: new ListTile(
                leading: new MyBullet(),
                title: new Text('The player with the most points wins the game.',style: TextStyle(color:Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold),),
              ),
            ),

    ],
        ),
      ),
    );
  }
}

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 20.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
  }