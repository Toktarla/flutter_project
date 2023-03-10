import 'package:flutter/material.dart';
import 'package:untitled5/constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories=[
    "RAM",
    "Video cards",
    "Processors",
    "Motherboards"
  ];
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: prDefaultPadding),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context,index) => GestureDetector(
                onTap: (){
                  setState(() {
                    selectedIndex=index;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: prDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: prTextColor,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: prDefaultPadding/4),
                        height: 2,
                        width: 30,
                        color: selectedIndex==index ? Colors.black : Colors.transparent,
                      ),
                    ],
                  ),
                ),
              ),
          ),

        ),
    );

  }
}
