import 'dart:io';

import 'package:festival_post/Model/Simple_post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class Simpale_poste extends StatefulWidget {
  const Simpale_poste({Key? key}) : super(key: key);

  @override
  State<Simpale_poste> createState() => _Simpale_posteState();
}

class _Simpale_posteState extends State<Simpale_poste> {

  TextEditingController txtname = TextEditingController();
  TextEditingController txtbio = TextEditingController();
  TextEditingController txtid = TextEditingController();
  TextEditingController txttag = TextEditingController();
  TextEditingController txtcom = TextEditingController();
  String? img;
  String? img1;
  int? d;

  var txtkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: txtkey,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Text(""),
            title: Text(
              "MAKE YOUR POST",
              style: GoogleFonts.anton(fontSize: 25, color: Colors.orange),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //top
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Image 1",
                        style: TextStyle(fontSize: 18, color: Colors.red),
                      ),
                      Text(
                        "Image 2",
                        style: TextStyle(fontSize: 18, color: Colors.red),
                      ),
                    ],
                  ),
                  //image
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: img == null
                              ? Image.asset("asseta/image/p1.png")
                              : Image.file(File("$img")),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30),
                          child: img1 == null
                              ? Image.asset("asseta/image/p1.png")
                              : Image.file(File("$img1")),
                        ),
                      ),
                    ],
                  ),
                  //pick
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //1
                      InkWell(
                        onTap: () async {
                          ImagePicker i1 = ImagePicker();
                          XFile? xfile =
                          await i1.pickImage(source: ImageSource.gallery);
                          setState(() {
                            img = xfile?.path;
                          });
                        },
                        child: Icon(
                          Icons.photo,
                          size: 35,
                          color: Colors.red,
                        ),
                      ),
                      //1
                      InkWell(
                        onTap: () async {
                          ImagePicker i1 = ImagePicker();
                          XFile? xfile =
                          await i1.pickImage(source: ImageSource.camera);
                          setState(() {
                            img = xfile!.path;
                          });
                        },
                        child: Icon(
                          Icons.camera,
                          size: 35,
                          color: Colors.red,
                        ),
                      ),
                      //2
                      SizedBox(width: 20),
                      InkWell(
                        onTap: () async {
                          ImagePicker i1 = ImagePicker();
                          XFile? xfile =
                          await i1.pickImage(source: ImageSource.gallery);
                          setState(() {
                            img1 = xfile!.path;
                          });
                        },
                        child: Icon(
                          Icons.photo,
                          size: 35,
                          color: Colors.red,
                        ),
                      ),
                      //2
                      InkWell(
                        onTap: () async {
                          ImagePicker i1 = ImagePicker();
                          XFile? xfile =
                          await i1.pickImage(source: ImageSource.camera);
                          setState(() {
                            img1 = xfile!.path;
                          });
                        },
                        child: Icon(
                          Icons.camera,
                          size: 35,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  ////detail
                  //name
                  SizedBox(height: 30),
                  TextFormField(
                    controller: txtname,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Value";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        label: Text(
                          "Full Name",
                          style: TextStyle(fontSize: 19, color: Colors.red),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.red,
                        )),
                  ),
                  //bio
                  SizedBox(height: 10),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Value";
                      }
                    },
                    controller: txtbio,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        label: Text(
                          "Bio",
                          style: TextStyle(fontSize: 19, color: Colors.red),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.red,
                        )),
                  ),
                  //id
                  SizedBox(height: 10),
                  TextFormField(
                    controller: txtid,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Value";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        label: Text(
                          "Inasta Id",
                          style: TextStyle(fontSize: 19, color: Colors.red),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.red,
                        )),
                  ),
                  //tag line
                  SizedBox(height: 10),
                  TextFormField(
                    controller: txttag,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Value";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        label: Text(
                          "Your Tag Line",
                          style: TextStyle(fontSize: 19, color: Colors.red),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.red,
                        )),
                  ),
                  //comment
                  SizedBox(height: 10),
                  TextFormField(
                    controller: txtcom,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter The Value";
                      }
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        label: Text(
                          "Pind Comment",
                          style: TextStyle(fontSize: 19, color: Colors.red),
                        ),
                        prefixIcon: Icon(
                          Icons.person,
                          size: 30,
                          color: Colors.red,
                        )),
                  ),
                  //Show
                  SizedBox(height: 50),
                  InkWell(
                    onTap: () {
                      if (txtkey.currentState!.validate()) {
                        simpleModel s1 =simpleModel(
                          img1: img,
                          img2: img1,
                          name: txtname.text,
                          bio: txtbio.text,
                          id: txtid.text,
                          tag: txttag.text,
                          com: txtcom.text,
                        );
                        Navigator.pushNamed(context, "simplepost");
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.orange,
                          boxShadow: [
                            BoxShadow(color: Colors.black, blurRadius: 5)
                          ]),
                      alignment: Alignment.center,
                      child: Text(
                        "Show Post",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
