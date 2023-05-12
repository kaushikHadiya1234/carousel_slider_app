import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider_app/Carousel_Screen/Provider/slider_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SliderProvider? pt;
  SliderProvider? pf;

  @override
  Widget build(BuildContext context) {
    pf = Provider.of<SliderProvider>(context, listen: false);
    pt = Provider.of<SliderProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Carousel Slider"),
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            CarouselSlider.builder(
                itemBuilder: (context, index, realIndex) {
                  return Container(
                      height: 200,
                      width: double.infinity,
                      margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${pf!.SliderList[index]}"),fit: BoxFit.cover
                    ),
                  borderRadius: BorderRadius.circular(20), color: Colors.blue[100]),);
                },
                itemCount: pf!.SliderList.length,
                options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    pf!.ChangeIndex(index);
                  },
                ),
              ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pf!.SliderList.asMap().entries.map((e) => Container(
                height: 7,
                width: 7,
                margin: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color:pt!.SliderIndex==e.key?Colors.red:Colors.yellow
                ),
              )).toList(),
            )
          ],
        ),
      ),
    );
  }
}
