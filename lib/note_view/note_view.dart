import 'package:flutter/material.dart';
class ViewNote extends StatelessWidget {
  const ViewNote({super.key, required this.title, required this.date, required this.note});
    final String title;
  final String date;
  final String note;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar:AppBar(
      centerTitle: true,
      title: Text("Details"),
    ),
      body: Center(child: Column(
        children: [
          Text("$title"),
          Text("$date"),
          Text("$note"),
        ],
      ),),
    );
  }
}
