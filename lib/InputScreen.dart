
import 'dart:ui';

import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
  @override

  List<String> formInput = [];
  TextEditingController emailController = new TextEditingController();
   var _formKey = GlobalKey<FormState>();


  void saveInput(){
    formInput.add(emailController.text);
  }



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
      key: _formKey,
       child: new ListView(
           padding: const EdgeInsets.only(top: 50.0,right: 50.0, left: 50.0, bottom: 50.0),
            children: <Widget>[


              new TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value.isEmpty) {
                    return "You need to add a name";
                  }

                  if(value.length < 2){
                    return "Name must have more than one character";
                  }
                },
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
                  controller: emailController,
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
                  controller: emailController,
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
                  controller: emailController,
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
                  controller: emailController,
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
                  controller: emailController,
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
                    _formKey.currentState.validate();
                    Scaffold.of(context)
                    .showSnackBar(
                      SnackBar(
                        content: Text("This is vailid"),
                      )
                    );
                  },
                  child: Text(
                    "Save".toUpperCase(),
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
