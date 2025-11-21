import 'package:flutter/material.dart';
import 'package:the_docket/database/database.dart';
import 'package:the_docket/widget/search_filed.dart';

import '../new_file_screen/new_file_screen.dart';
import 'drawer.dart';
import 'note_card.dart';

class NoteScreen extends StatefulWidget {
  const NoteScreen({super.key});

  @override
  State<NoteScreen> createState() => _NoteScreenState();
}

class _NoteScreenState extends State<NoteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3a355e),
        leading: Builder(
          builder: (a) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(a).openDrawer();
            },
          ),
        ),
        centerTitle: true,
        title: Text(
          "The Docket \n"
          "Create by Nazifa Akter Nishat",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: DrawerWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            search_filed(),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: DataBase.list.length,
                itemBuilder: (Context, index) => NoteCard(i: index),
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
          ).then((a) {
            setState(() {});
          });
        },
        backgroundColor: Color(0xff3a355e),
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
