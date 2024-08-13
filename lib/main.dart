import 'package:festival_post/Post/Insta_post.dart';
import 'package:festival_post/Post/Simple_post_maker.dart';
import 'package:festival_post/Post/link_din_post.dart';
import 'package:festival_post/Scrrens/Home_scrren.dart';
import 'package:festival_post/Scrrens/Link_din_post_maker.dart';
import 'package:festival_post/Scrrens/Post+maker_scrren.dart';
import 'package:festival_post/Scrrens/simpale_post.dart';
import 'package:festival_post/Splash/Splash_scrren.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "splash",
          routes: {
            "/": (context) => Home_scrren(),
            "splash": (context) => Splash_(),
            "insta": (context) => Insta_post(),
            "link": (context) => Link_din(),
            "simple": (context) => Simpale_poste(),
            "instapost": (context) => Post_insta(),
            "linkdinpost": (context) => post_link(),
            "simplepost": (context) => Post_maker(),
          },
        );
      },
    ),
  );
}
