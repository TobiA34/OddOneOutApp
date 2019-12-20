
import 'dart:ui';

import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
        drawer: Drawer(
        ),
        appBar: AppBar(
          title: Text("Input Screen", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
          iconTheme: new IconThemeData(color: Colors.black),
        ),

      body: Center(

       child: new ListView(
           padding: const EdgeInsets.only(top: 50.0,right: 50.0, left: 50.0, bottom: 50.0),
            children: <Widget>[

              new TextField(
                decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(20.0),
                      ),
                    ),
                    filled: true,
                    hintStyle: new TextStyle(color: Colors.grey[800]),
                    hintText: "Your Name",
                    fillColor: Colors.amber[100]),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 30.0),
                child: new TextField(
                  decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(20.0),
                        ),
                      ),
                      filled: true,
                      hintStyle: new TextStyle(color: Colors.grey[800]),
                      hintText: "Your Name",
                      fillColor: Colors.amber[100]),
                ),
              ),




            ],

        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {

           generateForm();
        },
        label: Text('Add new input form'),
        icon: Icon(Icons.add),
        backgroundColor:  Colors.black,
      ),

    );
  }
}

void generateForm(){
  Container(
    margin: EdgeInsets.only(top: 30.0),
    child: new TextField(

      decoration: new InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
          ),
          decoration: InputDecoration(
            suffix: IconButton(
              icon: Icon(Icons.cancel),
             ),
          ),
          filled: true,
          hintStyle: new TextStyle(color: Colors.grey[800]),
          hintText: "Your Name",
          fillColor: Colors.amber[100]),
    ),

  );

}