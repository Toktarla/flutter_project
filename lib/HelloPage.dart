import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/pages/mothreboard.dart';
import 'package:untitled5/pay_menu.dart';
import 'package:untitled5/controllers/state_controller.dart';
import 'package:untitled5/controllers/tap_controller.dart';

class HelloPage extends StatefulWidget {

  @override
  State<HelloPage> createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  @override
  Widget build(BuildContext context) {
    bool? isChecked=false;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    TapController controller=Get.find();
    var stateControllerVariables=Provider.of<StateController>(context);
    var stateControllerMethods=Provider.of<StateController>(context,listen: false);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55),
        child: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text('Delivery method', style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),)),
          leading: IconButton(

            icon: Icon(Icons.arrow_back_sharp,color: Colors.red,size:40,),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          SizedBox(height: 15,),
          Container(
            color: Colors.white,
            height: height*0.254,
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(

                  child: Text('Deliver 1 (OVER)',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500],

                  ),),
                  margin: EdgeInsets.only(left: 15,top: 20),
                ),

                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: height*0.2,
                  width: width*0.2,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://avatars.mds.yandex.net/i?id=4a2e910d7a7164e50eab5d64e8b57026387d8e26-4889316-images-thumbs&n=13'),
                    )
                  ),

                ),

              ],
            ),

          ),
          Divider(
            height: 1,
            thickness: 1.5,
            color: Colors.grey[100],
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

                  children: [
                    Container(


                      child: Checkbox(value: stateControllerVariables.isChecked,activeColor: Colors.redAccent, onChanged: (bool? newBool){
                        stateControllerMethods.changeCheckBox(newBool);


                      },),
                    ),
                    SizedBox(width: 20,),
                    Text('Delivery     ',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),),

                    Text('How it works?',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                    ),),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ],
            ),
            color: Colors.white,
            height: height*0.2,
            width: width,

          ),
          Divider(
            height: 1,
            thickness: 1.5,
            color: Colors.grey[100],
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(

                  children: [
                    Container(


                      child: Checkbox(value: stateControllerVariables.isChecked,activeColor: Colors.redAccent, onChanged: (newBool){
                        stateControllerMethods.changeCheckBox(newBool);
                      },),
                    ),
                    SizedBox(width: 20,),
                    Text('Kaspi Postomat',style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500],
                    ),),

                    Text('How it works?',style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                    ),),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ],
            ),
            color: Colors.white,
            height: height*0.125,
            width: width,

          ),
          Spacer(),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => (PayMenu())));
            },
            child: Container(
              height: height*0.1,
              width: width,
              color: Colors.blueAccent,
              child: Center(child: Text('Pay',style: TextStyle(
                color: Colors.white,
                fontSize: 20,

              ),),),
            ),
          ),


        ],

      ),
    );
  }
}
