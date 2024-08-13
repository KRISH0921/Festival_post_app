import 'dart:io';

import 'package:festival_post/Model/Link_din_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class post_link extends StatefulWidget {
  const post_link({Key? key}) : super(key: key);

  @override
  State<post_link> createState() => _post_linkState();
}

class _post_linkState extends State<post_link> {
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
    linkdinModel l1 =
        ModalRoute.of(context)!.settings.arguments as linkdinModel;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Link Din Post",
            style: GoogleFonts.anton(fontSize: 25, color: Colors.orange),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.download,size: 30,color: Colors.orange,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Container(
                    height: 500,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "asseta/image/post/2.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //imgs
                  Container(
                    height: 500,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //name
                          SizedBox(height: 5),
                          Text(
                            "Name : ${l1.name}",
                            style: TextStyle(
                                fontSize: i, fontFamily: fonts[a], color: d),
                          ),
                          //img 1
                          SizedBox(height: 10),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: l1.img1 == null
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "asseta/image/p1.png",
                                        fit: BoxFit.fill,
                                      ))
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.file(
                                        File("${l1.img1}"),
                                        fit: BoxFit.fill,
                                      )),
                            ),
                          ),
                          //img 2
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: l1.img2 == null
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        "asseta/image/p1.png",
                                        fit: BoxFit.fill,
                                      ),
                                    )
                                  : ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.file(
                                        File("${l1.img2}"),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                  //bio
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 175),
                    child: Text(
                      "Bio : ${l1.bio}",
                      style: TextStyle(
                          fontSize: i, fontFamily: fonts[a], color: d),
                    ),
                  ),
                  //profation
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 175),
                    child: Text(
                      "Profation : ${l1.id}",
                      style: TextStyle(
                          fontSize: i, fontFamily: fonts[a], color: d),
                    ),
                  ),
                  //tag
                  Padding(
                    padding: const EdgeInsets.only(top: 320, left: 5),
                    child: Container(
                      width: 150,
                      child: Text(
                        "Tag Line : ${l1.tag}",
                        style: TextStyle(
                            fontFamily: fonts[a], color: d, fontSize: i),
                      ),
                    ),
                  ),
                  //com
                  Padding(
                    padding: const EdgeInsets.only(top: 380, left: 5),
                    child: Icon(
                      Icons.push_pin,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 420, left: 5),
                    child: Text(
                      "${l1.com}",
                      style: TextStyle(
                          fontFamily: fonts[a], fontSize: i, color: d),
                    ),
                  )
                ]),
                //bottom
                SizedBox(height: 10),
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
      ),
    );
  }
}
