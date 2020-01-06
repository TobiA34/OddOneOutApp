
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:odd_one_out/CatagoryScreen.dart';

class InputScreen extends StatelessWidget {
  @override


//  List<TextEditingController> formInput = [];
 final list = new  List<TextEditingController>();

  TextEditingController nameInput1 = new TextEditingController();
  TextEditingController nameInput2 = new TextEditingController();
  TextEditingController nameInput3 = new TextEditingController();
  TextEditingController nameInput4 = new TextEditingController();
  TextEditingController nameInput5 = new TextEditingController();
  TextEditingController nameInput6 = new TextEditingController();

void saveInput(){

  list.add(nameInput1);
  list.add(nameInput2);
  list.add(nameInput3);
  list.add(nameInput4);
  list.add(nameInput5);
  list.add(nameInput6);

}

  void clearInput(){
    nameInput1.clear();
    nameInput2.clear();
    nameInput3.clear();
    nameInput4.clear();
    nameInput5.clear();
    nameInput6.clear();
  }




  var _formKey = GlobalKey<FormState>();




  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[600],
//        drawer: Drawer(
//        ),
        appBar: AppBar(
          title: Text("Input Screen", style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.amber[100],
          centerTitle: true,
          automaticallyImplyLeading: false,
          iconTheme: new IconThemeData(color: Colors.black),
        ),

      body: Center(
      key: _formKey,
       child: new ListView(
           padding: const EdgeInsets.only(top: 50.0,right: 50.0, left: 50.0, bottom: 50.0),
            children: <Widget>[


              new TextFormField(
                controller: nameInput1,
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
                child: new TextFormField(
                  controller: nameInput2,
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
                child: new TextFormField(
                  controller: nameInput3,
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
                child: new TextFormField(
                  controller: nameInput4,
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
                child: new TextFormField(
                  controller: nameInput5,
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
                child: new TextFormField(
                  controller: nameInput6,
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
                margin: EdgeInsets.only(top: 40.0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0)),
                  color: Colors.black,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    saveInput();
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return CatagoryScreen();
                    }));
                  print(list.length);

                  },
                  child: Text(
                    "Save".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 40.0),
                child: FlatButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0)),
                  color: Colors.black,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    clearInput();
                  },
                  child: Text(
                    "clear".toUpperCase(),
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),


            ],

        ),
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

          filled: true,
          hintStyle: new TextStyle(color: Colors.grey[800]),
          hintText: "Your Name",
          fillColor: Colors.amber[100]),
    ),

  );

}
