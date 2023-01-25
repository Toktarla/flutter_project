import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TapController extends GetxController
{

  int _x=0;
  int get x=>_x;
  void increaseX(){

    _x++;
    update();
  }
  void decreaseX(){
    if(_x==0) _x=1;

    _x--;
    update();
  }

}