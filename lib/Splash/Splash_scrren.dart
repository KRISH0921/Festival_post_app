import 'dart:ui';

import 'package:flutter/material.dart';

class Splash_ extends StatefulWidget {
  const Splash_({Key? key}) : super(key: key);

  @override
  State<Splash_> createState() => _Splash_State();
}

class _Splash_State extends State<Splash_> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, "/");
    },);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(color: Colors.amber,backgroundColor: Colors.amber.shade100),
              Image.asset("asseta/image/d1.png"),
              Text("Develop By The",style: TextStyle(fontSize: 30,color: Colors.orange),),
              Text("Darshan",style: TextStyle(fontSize: 30,color: Colors.orange),),
            ],
          ),
        ),
      ),
    );
  }
}
