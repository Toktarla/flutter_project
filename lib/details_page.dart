import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled5/HelloPage.dart';
import 'package:untitled5/controllers/tap_controller.dart';

class DetalsPage extends StatefulWidget {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  DetalsPage({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });

  @override
  State<DetalsPage> createState() => _DetalsPageState();
}

class _DetalsPageState extends State<DetalsPage> {
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TapController controller = Get.put(TapController());


    return Scaffold(
      body: Column(
        children: [

          //Image Avatar

          Expanded(
              child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18)),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(widget.image),
              ),
            ),
          )),

          // Text,description
          Container(
            height: 260,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: widget.color,
                  ),
                ),

                Text(
                  '${widget.price}\₸',
                  style: TextStyle(
                    fontSize: 18,
                    color: widget.color,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  widget.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.color,
                  ),
                ),


                //Buttons
                Row(
                  children: [
                    // Back Button
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(left: 5),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: widget.color),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Back',
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                    ),),

                    SizedBox(width: 15,),

                    // Buy Button
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(right: 5),
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: widget.color),
                        onPressed: () {

                          //showBottomSheet
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20),
                              ),
                            ),
                            context: context,
                            builder: (context) => Column(
                              children: [
                                Center(
                                    child: Icon(
                                  Icons.linear_scale,
                                  color: Colors.grey,
                                )),
                                SizedBox(
                                  height: 25,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    children: [
                                      Text(
                                        'You choose',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Spacer(),
                                      IconButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        icon:
                                            Icon(Icons.delete_forever_rounded),
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: height * 0.2,
                                        width: width * 0.2,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(18),
                                              bottomRight: Radius.circular(18)),
                                          image: DecorationImage(
                                            fit: BoxFit.contain,
                                            image: AssetImage(widget.image),
                                          ),
                                        ),
                                      ),
                                      Text(
                                        widget.title,
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                      Text(
                                        '${widget.price}\₸',
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(child: Text('OVER',style: TextStyle(fontSize: 14),)),
                                SizedBox(height: 13,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    IconButton(onPressed: (){
                                      controller.decreaseX();

                                    }, icon: Icon(Icons.remove)),
                                    GetBuilder<TapController>(builder: (tapController) {

                                      return Text('${tapController.x.toString()} p');
                                    }),
                                    IconButton(onPressed: (){
                                      controller.increaseX();



                                    },
                                        icon: Icon(Icons.add,color: Colors.blueAccent,)),
                                  ],
                                ),

                                SizedBox(height: 35,),

                                // Apply Now
                                GestureDetector(
                                  onTap:(){

                                    Get.to(HelloPage(),
                                    duration: Duration(seconds: 1),
                                      transition: Transition.circularReveal,
                                    );

                                  },
                                  child: Container(
                                    color: Colors.greenAccent,
                                    height: height*0.1,
                                    width: width,
                                    child: Center(
                                      child: Text('Apply now',style: TextStyle(

                                        color: Colors.white,
                                        fontSize: 12,

                                      ),),
                                    ),

                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                        //Buy Button
                        child: Text('Buy',
                            style: TextStyle(
                              color: Colors.white,
                            )),

                      ),
                    ))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
