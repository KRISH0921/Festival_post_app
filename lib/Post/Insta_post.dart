import 'dart:io';
import 'dart:math';

import 'package:festival_post/Model/insta_post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Post_insta extends StatefulWidget {
  const Post_insta({Key? key}) : super(key: key);

  @override
  State<Post_insta> createState() => _Post_instaState();
}

class _Post_instaState extends State<Post_insta> {
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
    Instamodel m1 = ModalRoute.of(context)!.settings.arguments as Instamodel;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Text(''),
          title: Text(
            "Your Post",
            style: GoogleFonts.anton(fontSize: 25, color: Colors.orange),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.download,size: 30,color: Colors.orange,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //post
                Stack(
                  children: [
                    //top
                    Container(
                      height: 600,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              transform: GradientRotation(pi / 2),
                              colors: [
                            Colors.red,
                            Colors.amber,
                            Colors.yellow,
                            Colors.lightBlueAccent,
                            Colors.deepPurple,
                          ])),
                      child: Image.asset(
                        "asseta/image/post/1.jpg",
                      ),
                    ),
                    //imgs
                    //one
                    Padding(
                      padding: const EdgeInsets.only(top: 170, left: 60),
                      child: Transform.rotate(
                        angle: -2 / 9,
                        child: Container(
                          height: 140,
                          width: 140,
                          color: Colors.white,
                          child: m1.img1 == null
                              ? Image.asset("asseta/image/p1.png")
                              : Image.file(
                                  File("${m1.img1}"),
                                  fit: BoxFit.fill,
                                ),
                        ),
                      ),
                    ),
                    //tow
                    Padding(
                      padding: const EdgeInsets.only(top: 260, left: 170),
                      child: Transform.rotate(
                        angle: 2 / 6,
                        child: Container(
                          height: 140,
                          width: 140,
                          color: Colors.white,
                          child: m1.img1 == null
                              ? Image.asset("asseta/image/p1.png")
                              : Image.file(
                                  File("${m1.img2}"),
                                  fit: BoxFit.fill,
                                ),
                        ),
                      ),
                    ),
                    //name
                    Padding(
                      padding: const EdgeInsets.only(top: 80),
                      child: Text("Name : ${m1.name}",
                          style: TextStyle(
                              fontSize: i, color: d, fontFamily: fonts[a])),
                    ),
                    //bio
                    Padding(
                      padding: const EdgeInsets.only(top: 490),
                      child: Text("Bio : ${m1.bio}",
                          style: TextStyle(
                              fontSize: i, color: d, fontFamily: fonts[a])),
                    ),
                    //id
                    Padding(
                      padding: const EdgeInsets.only(top: 510),
                      child: Text("Insta Id : ${m1.id}",
                          style: TextStyle(
                              fontSize: i, color: d, fontFamily: fonts[a])),
                    ),
                    //tag
                    Padding(
                      padding: const EdgeInsets.only(top: 555),
                      child: Text("Tag Line : ${m1.tag}",
                          style: TextStyle(
                              fontSize: i, color: d, fontFamily: fonts[a])),
                    ),
                    //coment
                    Padding(
                        padding: EdgeInsets.only(left: 150, top: 30),
                        child: Icon(
                          Icons.push_pin,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 185,top: 30),
                      child: Text("${m1.com}",
                          style: TextStyle(
                              fontSize: i, color: d, fontFamily: fonts[a])),
                    ),
                    //text
                    Padding(
                      padding: const EdgeInsets.only(top: 150, left: 220),
                      child: Text(
                        "Life Is Too Short",
                        style: TextStyle(
                          fontSize: i,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: fonts[a],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 380),
                      child: Text(
                        "To Wear",
                        style: TextStyle(
                          fontSize: i,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: fonts[a],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 400),
                      child: Text(
                        "Boring Jewelry",
                        style: TextStyle(
                          fontSize: i,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: fonts[a],
                        ),
                      ),
                    ),
                  ],
                ),
                //style
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
                                BoxShadow(color: Colors.black, blurRadius: 3)
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
                                BoxShadow(color: Colors.black, blurRadius: 3)
                              ],
                              color: Colors.white),
                          alignment: Alignment.center,
                          child: Text("Font${index}",style: TextStyle(fontFamily: fonts[index]),),
                        ),
                      );
                    },
                    itemCount: fonts.length,
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
