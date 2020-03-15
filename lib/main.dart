import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Camera App",
    home: LandingScreen(),
  ));
}

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  _openGallery(){

  }

  _openCamera(){

  }

  Future<void> _showChoiceDialog(BuildContext context){
    return showDialog(context: context,builder: (BuildContext){
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              GestureDetector(
                child: Text("Gallery"),
                onTap: (){
                  _openGallery();
                },
              ),
              GestureDetector(
                child: Text("Camera"),
                onTap: (){
                  _openCamera();
                },
              )
            ],
          )
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("NO IMAGE SELECTED"),
            RaisedButton(onPressed: (){
              _showChoiceDialog(context);
            },
              child: Text(("SELECT IMAGE!")),
            )
          ],
        )
      )
    );
  }
}

