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

List<Product> products3=[
  //1
  Product(
      id: 1,
      title:"IntelCore i5 12400F",
      price:93886,
      size:12,
      image:"lib/images/[removal.ai]_tmp-635697888928a.png",
      color:Color(0xFF3D82AE)),
  //2
  Product(
      id: 2,
      title:"IntelСore i7-12700KF",
      price:210973,
      size:12,
      //description:dummyText,
      image:"lib/images/[removal.ai]_tmp-6356979016c1b.png",
      color:Color(0xFFB40673)),
  //3
  Product(
      id: 3,
      title:"AMD Ryzen 5 5600X",
      price:97990,
      size:12,
      // description:dummyText,
      image:"lib/images/[removal.ai]_tmp-63569781c7781.png",
      color:Color(0xff443a49)),
  //4
  Product(
      id: 4,
      title:"IntelCore i7 3770",
      price:39280,
      size:12,
      // description:dummyText,
      image:"lib/images/[removal.ai]_tmp-6356978c6302b.png",
      color:Color(0xFFB60808)),
  //5
  Product(
      id: 5,
      title:"AMD Ryzen 5 5600G",
      price:86860,
      size:12,
      // description:dummyText,
      image:"lib/images/[removal.ai]_tmp-6356977eb1a5b.png",
      color:Color(0xFF287000)),
  //6
  Product(
      id: 6,
      title:"Intel Core i7 7700K",
      price:119000,
      size:12,
      // description:dummyText,
      image:"lib/images/intel-core-i7-7700k-oem-6400161-1.jpg",
      color:Color(0xFFB2A608)),

];