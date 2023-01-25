import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/categories.dart';
import 'package:untitled5/constants.dart';
import 'package:untitled5/products/product2.dart';

import '../item_cards/item_card2.dart';


class VideoCards extends StatelessWidget {
  const VideoCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15,),

        // Categories(),
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: prDefaultPadding),
          child: GridView.builder(
            itemCount: products2.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.75,crossAxisSpacing: prDefaultPadding,mainAxisSpacing: prDefaultPadding),
            itemBuilder: (context,index)=> ItemCard(product: products2[index],),
          ),
        ),
        )



      ],


    );


  }
}
