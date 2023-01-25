import 'package:flutter/material.dart';
class Product{
  final String image, title, description;
  final int price,size,id;
  final Color color;

  Product({
    this.image="",
    this.title="",
    this.description="",
    this.size=0,
    this.id=0,
    this.color=Colors.black,
    this.price=0
  });
}

List<Product> products2=[
  //1
  Product(
      id: 1,
      title:"GeForceRTX 30Series",
      price:316190,
      size:12,
      image:"lib/images/[removal.ai]_tmp-6356921d1b518.png",
      color:Color(0xFF3D82AE)),
  //2
  Product(
      id: 2,
      title:"GeForceRTX 3060Ti",
      price:324990,
      size:12,
      //description:dummyText,
      image:"lib/images/[removal.ai]_tmp-6356922b259a2.png",
      color:Color(0xFFB40673)),
  //3
  Product(
      id: 3,
      title:"GeForceGTX 1660",
      price:187000,
      size:12,
      // description:dummyText,
      image:"lib/images/videocard4-removebg-preview.png",
      color:Color(0xff443a49)),
  //4
  Product(
      id: 4,
      title:"GeForceRTX 2060",
      price:250000,
      size:12,
      // description:dummyText,
      image:"lib/images/videocard5-removebg-preview.png",
      color:Color(0xFFB60808)),
  //5
  Product(
      id: 5,
      title:"GeForceGTX 1050 Ti",
      price:136500,
      size:12,
      // description:dummyText,
      image:"lib/images/videocard6-removebg-preview.png",
      color:Color(0xFF287000)),
  //6
  Product(
      id: 6,
      title:"GeForceRTX 3070Ti",
      price:399998,
      size:12,
      // description:dummyText,
      image:"lib/images/videokarta-8gb-rtx3070ti-asus-rog-strix-rtx3070ti-o8ggaming-gddr6x-256bit-2xhdmi-3xdp-box-104498801-1-removebg-preview.png",
      color:Color(0xFFB2A608)),

];