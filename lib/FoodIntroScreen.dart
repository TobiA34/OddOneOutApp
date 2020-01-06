
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:odd_one_out/CatagoryScreen.dart';

class FoodIntroScreen extends StatelessWidget {

  var catagoryScreen = CatagoryScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        drawer: Drawer(
        ),
        appBar: AppBar(
          title: Text("Food", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
          iconTheme: new IconThemeData(color: Colors.black),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 30, 350),
                          child: Image(
                            image: AssetImage("assets/pizza-slice.png"),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 200.0, 0, 0),
                          child: new Text('''Everybody loves food and has opinions on different kinds of food. Some people like Chinese food, indian food or italian food. Food is great for icebreakers and other social activities. This is a classic category that everybody likes.


                        ''',
                            textAlign: TextAlign.center,
                            style: new TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(30, 500, 120, 0),
                            child: MaterialButton(
                              height: 40.0,
                              minWidth: 96.0,
                              color: Colors.yellow[200],
                              textColor: Colors.black,
                              child: new Text("Back"),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return CatagoryScreen();
                                }));
                              },                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.0)
                              ),
                            ),
                          ),

                          Container(
                            margin: EdgeInsets.fromLTRB(0, 500, 30, 0),
                            child: MaterialButton(
                              height: 40.0,
                              minWidth: 96.0,
                              color: Colors.yellow[200],
                              textColor: Colors.black,
                              child: new Text("Start"),
                              onPressed: () => {},
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27.0)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ]),
        ));
  }
}