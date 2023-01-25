import 'package:flutter/material.dart';
import 'package:untitled5/constants.dart';
import 'package:untitled5/products/products3.dart';
import '../item_cards/item_card3.dart';



class Processor extends StatelessWidget {
  const Processor({Key? key}) : super(key: key);

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
            itemCount: products3.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 0.75,crossAxisSpacing: prDefaultPadding,mainAxisSpacing: prDefaultPadding),
            itemBuilder: (context,index)=> ItemCard(product: products3[index],),
          ),
        ),
        )



      ],


    );


  }
}
