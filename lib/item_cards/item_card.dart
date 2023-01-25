import 'package:flutter/material.dart';
import 'package:untitled5/products/product.dart';
import '../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  const ItemCard({
   required this.product,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Container(
          padding: EdgeInsets.all(prDefaultPadding),
           height: 165,
           width: 200,
          decoration: BoxDecoration(
            color: product.color,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(product.image) ,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: prDefaultPadding/4),
          child: Text(product.title,style: TextStyle(
            color: prTextColor,
            fontWeight: FontWeight.bold,
          ),),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: prDefaultPadding/4),
          child: Text("${product.price}₸",style: TextStyle(
            color: prTextColor,
            fontWeight: FontWeight.bold
          ),),
        ),
      ],
    );
  }
}
