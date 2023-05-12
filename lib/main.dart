import 'package:carousel_slider_app/Carousel_Screen/Provider/slider_provider.dart';
import 'package:carousel_slider_app/Carousel_Screen/View/Home_Screen.dart';
import 'package:carousel_slider_app/Intro_Screen/Provider/intro_provider.dart';
import 'package:carousel_slider_app/Intro_Screen/View/intro_Screen.dart';
import 'package:carousel_slider_app/sing_up_page/View/Sing_up_page.dart';
import 'package:carousel_slider_app/staggered_grid/View/staggered_grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderProvider()),
        ChangeNotifierProvider(create: (context) => IntroProvider()),
      ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => LoginScreen(),
            'intro':(context) => IntroScreen(),
            'photo':(context) => PhotoScreen(),
          },
        ),
      ),
  );
}
