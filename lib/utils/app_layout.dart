import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout{
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }

  static getScreenHeight(){
    return Get.height;
  }

  static getScreenWidth(){
    return Get.width;
  }

  static getHeigh(double pixels){
    double y = getScreenHeight()/pixels;
    return getScreenHeight()/y;
  }
  static getWidth(double pixels){
    double y = getScreenWidth()/pixels;
    return getScreenWidth()/y;
  }


}