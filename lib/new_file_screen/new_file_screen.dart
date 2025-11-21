import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:the_docket/widget/note.dart';

class NewFileScreen extends StatefulWidget {
  const NewFileScreen({super.key});

  @override
  State<NewFileScreen> createState() => _NewFileScreenState();
}

class _NewFileScreenState extends State<NewFileScreen> {
  TextEditingController titleController = TextEditingController();
  TextEditingController noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (a) => NoteScreen()),
            );
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {
                log("${titleController.text}");
                log("${noteController.text}");
                log("====");

                List<Map<String, dynamic>> l = [
                  {
                    'id': 1,
                    'title': titleController.text,
                    'date': '${DateTime.now()}',
                    'note': noteController.text,
                  },
                ];
              },
              child: Icon(Icons.check),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: titleController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                //border: InputBorder.none,
                hintText: "Title",
                hintStyle: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: noteController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,

                hintText: "Note your day..",
                hintStyle: TextStyle(
                  fontSize: 15,
                  //S fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
