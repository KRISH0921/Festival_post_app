import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Home_scrren extends StatefulWidget {
  const Home_scrren({Key? key}) : super(key: key);

  @override
  State<Home_scrren> createState() => _Home_scrrenState();
}

class _Home_scrrenState extends State<Home_scrren> {
  int? i, d;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Festival Post maker",
            style: GoogleFonts.anton(fontSize: 25, color: Colors.orange),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Up
                Text(
                  "Upcoming Festival :",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                //images
                SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      height: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 8,
                                    blurStyle: BlurStyle.solid)
                              ],
                            ),
                            child: ClipRRect(
                              child: Image.asset(
                                "asseta/image/up/2.jpg",
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          SizedBox(width: 30),
                          Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 8,
                                    blurStyle: BlurStyle.solid)
                              ],
                            ),
                            child: ClipRRect(
                              child: Image.asset(
                                "asseta/image/up/3.jpg",
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 250,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 8,
                                blurStyle: BlurStyle.solid)
                          ],
                        ),
                        child: ClipRRect(
                          child: Image.asset(
                            "asseta/image/up/1.jpg",
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                //Insta Post
                SizedBox(height: 60),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black12, width: 2)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Instagram Post",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      buttons(),
                    ],
                  ),
                ),
                //post 1
                SizedBox(height: 10),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "insta");
                      },child: post("asseta/image/post_/p1.jpg"));
                    },
                    itemCount: 4,
                  ),
                ),
                //Link Din Post
                SizedBox(height: 20),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black12, width: 2)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Link Din Post",
                        style: TextStyle(fontSize: 2.h, color: Colors.black),
                      ),
                      buttons(),
                    ],
                  ),
                ),
                //post 2
                SizedBox(height: 10),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "link");
                      },child: post("asseta/image/post_/p2.jpg"));
                    },
                    itemCount: 4,
                  ),
                ),
                //Simpal Post
                SizedBox(height: 20),
                Container(
                  height: 55,
                  decoration: BoxDecoration(
                    border: Border.symmetric(
                        horizontal: BorderSide(color: Colors.black12, width: 2)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Simpal Post",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      buttons(),
                    ],
                  ),
                ),
                //post 3
                SizedBox(height: 10),
                Container(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(onTap: () {
                        Navigator.pushNamed(context, "simple");
                      },child: post("asseta/image/post/3.jpg"));
                    },
                    itemCount: 4,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Button(int d) {
    return IconButton(
        onPressed: () {
          i = d;
        },
        icon: Icon(Icons.fiber_manual_record));
  }

  Widget buttons() {
    return Container(
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: Colors.orange,
      ),
      alignment: Alignment.center,
      child: Text(
        "View All",
        style: TextStyle(fontSize: 15, color: Colors.black),
      ),
    );
  }

  Widget post(String data) {
    return Container(
      height: 100,
      width: 100,
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 3,
          )
        ]
      ),
      child: Image.asset("$data"),
    );
  }
}
