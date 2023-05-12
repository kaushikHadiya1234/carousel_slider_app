import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider_app/Intro_Screen/Provider/intro_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  IntroProvider? pt;
  IntroProvider? pf;

  @override
  Widget build(BuildContext context) {
    pf=Provider.of<IntroProvider>(context,listen: false);
    pt=Provider.of<IntroProvider>(context,listen: true);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: IntroductionScreen(
            // globalBackgroundColor: Colors.black,
            next: Text("Next"),
            done: Text("Done"),
            showDoneButton: true,
            showNextButton: true,
            showSkipButton: true,
            skip: Text("skip"),
            onDone: (){
              Navigator.pushReplacementNamed(context, 'photo');
            },

            pages: [
              PageViewModel(title: "Introduction 1",body: "Loreum epusm in the paragraph est inaloa bkansol biilly jdee and croip ",bodyWidget: null,image: Image.asset("assets/images/i1.png",)),
              PageViewModel(title: "Introduction 2",body: "Loreum epusm in the paragraph est inaloa bkansol biilly jdee and croip ",bodyWidget: null,image: Image.asset("assets/images/i2.png")),
              PageViewModel(title: "Introduction 3",body: "Loreum epusm in the paragraph est inaloa bkansol biilly jdee and croip ",bodyWidget: null,image: Image.asset("assets/images/i3.png")),
            ],
          ),
        )
      ),
    );
  }
}
