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

List<Product> products4=[
  //1
  Product(
      id: 1,
      title:"ASUS ROG Crosshair",
      price:300900,
      size:12,
      image:"lib/images/[removal.ai]_tmp-63569aec9eda3.png",
      color:Color(0xFF3D82AE)),
  //2
  Product(
      id: 2,
      title:"ASRock B450",
      price:52875,
      size:12,
      //description:dummyText,
      image:"lib/images/[removal.ai]_tmp-63569ae9c2b16.png",
      color:Color(0xFFB40673)),
  //3
  Product(
      id: 3,
      title:"ASRock B560M",
      price:53893,
      size:12,
      // description:dummyText,
      image:"lib/images/[removal.ai]_tmp-63569ae8a520a.png",
      color:Color(0xff443a49)),
  //4
  Product(
      id: 4,
      title:"MSI PRO B660M",
      price:64135,
      size:12,
      // description:dummyText,
      image:"lib/images/[removal.ai]_tmp-63569af7c6319.png",
      color:Color(0xFFB60808)),
  //5
  Product(
      id: 5,
      title:"GIGABYTE Z690 AORUS",
      price:245762,
      size:12,
      // description:dummyText,
      image:"lib/images/[removal.ai]_tmp-63569af0cfadc.png",
      color:Color(0xFF287000)),
  //6
  Product(
      id: 6,
      title:"MSI MEG Z690 UNIFY-X",
      price:345035,
      size:12,
      // description:dummyText,
      image:"lib/images/[removal.ai]_tmp-63569af3a0c8e.png",
      color:Color(0xFFB2A608)),

];