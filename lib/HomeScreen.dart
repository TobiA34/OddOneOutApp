import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.grey[600],
        appBar: AppBar(
          title: Text("Odd One Out", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    new Container(
                    ),
                    new Container(
                      margin: EdgeInsets.fromLTRB(50, 0, 30, 300),
                      width: 400,
                      height: 400,
                      child: Image(
                        image: AssetImage("assets/Logo.png"),
                      ),
                    ),





                    new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20.0, right: 5.0, top: 10.0),

                            child: new Container(
                                margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
                                alignment: Alignment.center,
                                height: 60.0,
                                decoration: new BoxDecoration(
                                    color: Colors.amberAccent,
                                    borderRadius: new BorderRadius.circular(9.0)),
                                child: new Text("Tutorial",
                                    style: new TextStyle(
                                        fontSize: 20.0, color: Colors.black))),
                          ),
                        ),
                        Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0, right: 20.0, top: 10.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
//                                    builder: (context) => Page2(),
                                  ));
                                },
                                child: new Container(
                                    margin: EdgeInsets.fromLTRB(0, 400, 0, 0),
                                    alignment: Alignment.center,
                                    height: 60.0,
                                    decoration: new BoxDecoration(
                                        color: Colors.amberAccent,
                                        borderRadius: new BorderRadius.circular(9.0)),
                                    child: new Text("Start",
                                        style: new TextStyle(
                                            fontSize: 20.0, color: Colors.black))),
                              ),
                            )
                        )],
                    )
                  ],
                ),
              ]),
        ));
  }
}