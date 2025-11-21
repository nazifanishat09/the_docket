import 'package:flutter/material.dart';
import 'package:the_docket/new_file_screen/new_file_screen.dart';
import 'package:the_docket/note_view/note_view.dart';

import '../database/database.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.i});
  final int i;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (a) => NewFileScreen()),
        );
      },
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (a) => ViewNote(
                title: "${DataBase().list[i]['title']}",
                date: "${DataBase().list[i]['date']}",
                note: "${DataBase().list[i]['note']}",
              ),
            ),
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${DataBase().list[i]['title']}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Text(
                      "${DataBase().list[i]['date']}",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${DataBase().list[i]['note']}",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 14,
                    //fontWeight: FontWeight.w700,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
