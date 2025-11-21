import 'package:flutter/material.dart';
import 'package:the_docket/widget/note.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  NextPage()async{
await Future.delayed(Duration(seconds: 2));
Navigator.pushReplacement(context, MaterialPageRoute(builder: (a)=>NoteScreen()));
  }
  @override
  void initState() {
    NextPage();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Image(image: AssetImage("assets/D.png")),
      ),
    );
  }
}
