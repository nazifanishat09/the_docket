import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:the_docket/splash/splashScreen.dart';
import 'package:the_docket/widget/drawe.dart';



void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  NextScreen()async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (a)=>Splashscreen()));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DrawerScreen(i: 1,),


    );
  }
}

