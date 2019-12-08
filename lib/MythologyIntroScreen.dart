import 'dart:ui';

import 'package:flutter/material.dart';

class MythologyIntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        drawer: Drawer(
        ),
        appBar: AppBar(
          title: Text("Mythology", style: TextStyle(color: Colors.black),),
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
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 350),
                          child: Image(
                            image: AssetImage("assets/zeus.png"),
                          )
                      ),

                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 300.0, 0, 0),
                          child: new Text('''  Zeus, Ares, Apollo have you met any of these greek gods in real life?
Each god have different powers and they are really interesting. 





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
                              onPressed: () => {},
                              shape: RoundedRectangleBorder(
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