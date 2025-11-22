import 'package:flutter/material.dart';

class TrashFile extends StatefulWidget {
  const TrashFile({super.key});

  @override
  State<TrashFile> createState() => _TrashFileState();
}

class _TrashFileState extends State<TrashFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a355e),
        centerTitle: true,
        title: Text(
          "Trash",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
