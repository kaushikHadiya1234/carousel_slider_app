import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PhotoScreen extends StatefulWidget {
  const PhotoScreen({Key? key}) : super(key: key);

  @override
  State<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends State<PhotoScreen> {

  List ImageList = [
    'assets/images/ap2.jpg',
    'assets/images/ap3.jpg',
    'assets/images/ap6.jpg',
    'assets/images/ap5.jpg',
    'assets/images/w8.jpg',
    'assets/images/ap2.jpg',
    'assets/images/ap3.jpg',
    'assets/images/ap6.jpg',
    'assets/images/ap5.jpg',
    'assets/images/w8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Staggered RecyclerView"),
          backgroundColor: Colors.teal,
        ),
        body: MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          itemBuilder: (context, index) {
            return ClipRRect(borderRadius:BorderRadius.circular(10),child: Image.asset("${ImageList[index]}"));
          },
          itemCount: ImageList.length,
        ),
      ),
    );
  }
}

