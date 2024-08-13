import 'dart:io';

import 'package:festival_post/Model/Simple_post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post_maker extends StatefulWidget {
  const Post_maker({Key? key}) : super(key: key);

  @override
  State<Post_maker> createState() => _Post_makerState();
}

class _Post_makerState extends State<Post_maker> {
  int a = 0;
  double i = 18;
  List<Color> colorList = [
    Colors.white,
    Colors.black,
    Colors.white60,
    Colors.pink.shade900,
    Colors.pink.shade300,
    Colors.orange,
    Colors.blue.shade400,
    Colors.amber,
    Colors.lightGreen,
    Colors.purpleAccent,
    Colors.indigo,
  ];

  List fonts = [
    'f1',
    'f2',
    'f3',
    'f4',
    'f5',
    'f6',
    'f7',
    'f8',
    'f9',
    'f10',
  ];

  Color d = Colors.white;

  @override
  Widget build(BuildContext context) {

    simpleModel s1 =ModalRoute.of(context)!.settings.arguments as simpleModel;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Simple Post",
              style: GoogleFonts.anton(fontSize: 25, color: Colors.orange),
            ),
            centerTitle: true,
            actions: [
              Icon(Icons.download,size: 30,color: Colors.orange,)
            ],
          ),
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Stack(
                    children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset("asseta/image/post/3.jpg"),
                      ),
                      //img1

                      //bottom
                      SizedBox(height: 50),
                      Text(
                        "Font Size",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      Slider(
                        value: i,
                        divisions: 10,
                        label: '$i',
                        min: 10,
                        max: 30,
                        onChanged: (value) {
                          setState(() {
                            i = value;
                          });
                        },
                      ),
                      //color
                      Text(
                        "Select Color",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  d = colorList[index];
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: colorList[index],
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 3)
                                    ]),
                              ),
                            );
                          },
                          itemCount: colorList.length,
                        ),
                      ),
                      //Select Text
                      SizedBox(height: 10),
                      Text(
                        "Select Font",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      SizedBox(height: 20),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  a = index;
                                });
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black, blurRadius: 3)
                                    ],
                                    color: Colors.white),
                                alignment: Alignment.center,
                                child: Text(
                                  "Font ${index}",
                                  style: TextStyle(fontFamily: fonts[index]),
                                ),
                              ),
                            );
                          },
                          itemCount: fonts.length,
                        ),
                      ),
                      SizedBox(height: 50),
                    ],
                  ),
                ]),
              ),
            ],
          )),
    );
  }
}
