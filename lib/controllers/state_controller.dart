import 'package:flutter/material.dart';
class StateController extends ChangeNotifier{
  int count=0;
  bool? isChecked=false;

  void plusOne(){
    count++;
    notifyListeners();
  }
  void changeCheckBox(bool? newBool){
    isChecked=newBool;
    notifyListeners();
  }

}