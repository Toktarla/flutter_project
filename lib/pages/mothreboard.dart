import 'package:flutter/material.dart';
import 'package:untitled5/constants.dart';
import 'package:untitled5/products/products4.dart';
import '../item_cards/item_card4.dart';

class MotherBoard extends StatelessWidget {
  const MotherBoard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SizedBox(height: 15,),



        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: prDefaultPadding),
          child: GridView.builder(
            itemCount: products4.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.75,crossAxisSpacing: prDefaultPadding,mainAxisSpacing: prDefaultPadding),
            itemBuilder: (context,index)=> ItemCard(product: products4[index],),
          ),
        ),
        )



      ],


    );


  }
}
