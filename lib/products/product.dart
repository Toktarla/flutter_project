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

List<Product> products=[
  //1
  Product(
    id: 1,
    title:"F4-4266C9GTRG",
    price:119342,
    description: "G.Skill Trident Z Royal DDR4-4266 CL19 2x8 GB memory, purchased in the spring of 2021 for ~ 11,500 rubles on eggs. This particular kit was chosen as one of the best DDR4 memory kits with selected Samsung B-die chips, and was subsequently used in almost all reviews.",
    size:12,
      image:"lib/images/ram1.png",
    color:Color(0xFF3D82AE)),
  //2
  Product(
      id: 2,
      title:"Kingston HX432B4",
      price:210000,
      size:12,
      description:"Kingston FURY KF564C32RSAK2-32 is a kit of two 2G x 64-bit (16GB) DDR5-6400 CL32 SDRAM (Synchronous DRAM) 1Rx8 memory module, based on eight 2G x 8-bit FBGA components per module. Each module kit supports Intel® Extreme Memory Profiles (Intel® XMP) 3.0. Total kit capacity is 32GB",
      image:"lib/images/[removal.ai]_tmp-6352a5cf18399.png",
      color:Color(0xFFB40673)),
  //3
  Product(
      id: 3,
      title:"Kingston KF564C",
      price:173002,
      size:12,
      description:"Kingston FURY KF564C32RSAK2-32 is a kit of two 2G x 64-bit (16GB) DDR5-6400 CL32 SDRAM (Synchronous DRAM) 1Rx8 memory module, based on eight 2G x 8-bit FBGA components per module. Each module kit supports Intel® Extreme Memory Profiles (Intel® XMP) 3.0. Total kit capacity is 32",
      image:"lib/images/ram3.png",
      color:Color(0xff443a49)),
  //4
  Product(
      id: 4,
      title:"Kingston KV32S8",
      price:14490,
      size:12,
      description:"Kingston FURY KF564C32RSAK2-32 is a kit of two 2G x 64-bit (16GB) DDR5-6400 CL32 SDRAM (Synchronous DRAM) 1Rx8 memory module, based on eight 2G x 8-bit FBGA components per module. Each module kit supports Intel® Extreme Memory Profiles (Intel® XMP) 3.0. Total kit capacity is 32GB",
      image:"lib/images/ram4.png",
      color:Color(0xFFB60808)),
  //5
  Product(
      id: 5,
      title:"RipJawsF4-3200C22S",
      price:15119,
      size:12,
      description:'Briefly about the product, type DDR4 , 32 GB , clock frequency. 3200. Form factor is SODIMM. The volume of one module. 32 GB. Clock frequency 3200',
      image:"lib/images/ram5.png",
      color:Color(0xFF287000)),
  //6
  Product(
      id: 6,
      title:"Trident ZF4-3600C14D",
      price:157644,
      size:12,
      description:'The G.Skill Trident Z Royal kit is represented by DDR4 modules and is characterized by support for 16 GB of memory: 8 GB for each bar. The performance improvement is due to the 3600 MHz operating frequency setting and the PC28800 bandwidth rating ',
      image:"lib/images/ram6.png",
      color:Color(0xFFB2A608)),

];