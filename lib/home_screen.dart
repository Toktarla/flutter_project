import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/HelloPage.dart';
import 'package:untitled5/constants.dart';
import 'package:untitled5/pages/mothreboard.dart';
import 'package:untitled5/pages/processors.dart';
import 'package:untitled5/pages/videocard.dart';
import 'package:untitled5/controllers/state_controller.dart';
import 'pages/body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex=0;
  void tapped(int index){
    setState(() {
      _currentIndex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    var stateControllerVariables=Provider.of<StateController>(context);
    var stateControllerMethods=Provider.of<StateController>(context,listen: false);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
            children: [
              TabBar(
                tabs: [
                  Tab(text: " ",),
                  Tab(text: "Videocards",),
                  Tab(text: "Processors",),
                  Tab(text: "Motherboard",)
                ],
              ),
              Expanded(
                child: TabBarView(
                    children:
                [
                  Body(),
                  VideoCards(),
                  Processor(),
                  MotherBoard(),
                ]),
              )
            ],
        ),

          appBar: AppBar(

            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back,color: prTextColor,),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=> HelloPage(),
                ));
              },
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.light_mode,color: prTextColor,),
                onPressed: (){
                  Get.changeTheme(ThemeData.light(

                  ));
                },
              ),
              IconButton(
                icon: Icon(Icons.dark_mode,color: prTextColor,),
                onPressed: (){
                  Get.changeTheme(ThemeData.dark());

                },
              ),

              SizedBox(width: prDefaultPadding/2,),

            ],
          ),
      ),
    );
  }
}
