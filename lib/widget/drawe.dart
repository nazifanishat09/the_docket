import 'package:flutter/material.dart';
import 'package:the_docket/database/database.dart';
import 'package:the_docket/widget/search_filed.dart';

import '../new_file_screen/new_file_screen.dart';
import 'note_card.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key, required this.i});
final int i;
  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a355e),
        leading: Icon(Icons.menu, color: Colors.white),
        centerTitle: true,
        title: Text(
          "The Docket",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff3a355e)),
              child: Row(
                children: [
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    height: 40,
                    width: 275,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.file_copy),
                          Text(
                            "File",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    height: 40,
                    width: 275,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.delete),
                          Text(
                            "Trash",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    height: 40,
                    width: 275,
                    decoration: BoxDecoration(
                      color: Colors.purple[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        spacing: 10,
                        children: [
                          Icon(Icons.settings),
                          Text(
                            "Settings",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            search_filed(),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: DataBase().list.length,
                itemBuilder: (Context, index) => NoteCard(i:index),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (a) => NewFileScreen()),
          );
        },
        backgroundColor: Color(0xff3a355e),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}


