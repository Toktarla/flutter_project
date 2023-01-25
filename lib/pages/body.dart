import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled5/constants.dart';
import 'package:untitled5/details_page.dart';
import 'package:untitled5/products/product.dart';
import '../item_cards/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),

            Expanded(child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: prDefaultPadding),
              child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      crossAxisSpacing: prDefaultPadding,
                      mainAxisSpacing: prDefaultPadding
                  ),
                  itemBuilder: (context,index)=> RawMaterialButton(
                      onPressed: (){
                        Get.to(DetalsPage(
                          image: products[index].image,
                          title: products[index].title,
                          description: products[index].description,
                          price: products[index].price,
                          size: products[index].size,
                          color: products[index].color,
                          id: products[index].id,
                        ),
                        duration: Duration(seconds: 1),
                          transition: Transition.fade,
                        );
                      },
                      child: ItemCard(product: products[index],)
                  ),
                  ),
              ),
            ),
          ],
    );
  }
}
