
import 'package:flutter/material.dart';

class SliderProvider extends ChangeNotifier
{
  List SliderList = [
    'assets/images/ap2.jpg',
    'assets/images/ap3.jpg',
    'assets/images/ap5.jpg',
    'assets/images/ap6.jpg',
    'assets/images/w8.jpg',
  ];


  int SliderIndex=0;

  void ChangeIndex(int index)
  {
    SliderIndex=index;
    notifyListeners();
  }
}