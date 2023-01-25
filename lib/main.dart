import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:untitled5/constants.dart';
import 'package:untitled5/controllers/state_controller.dart';
import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(

      create:(_)=>StateController(),
      child: GetMaterialApp(

        title: 'Toktar',
        theme: ThemeData(
          primaryColor: prTextColor,

          visualDensity: VisualDensity.adaptivePlatformDensity,
          tabBarTheme: TabBarTheme(

            labelColor: prTextColor,
            labelStyle: TextStyle(color: prTextColor),
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: prTextColor),

            ),

          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),


      ),
    );
  }
}

