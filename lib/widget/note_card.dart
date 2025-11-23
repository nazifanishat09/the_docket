import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:the_docket/new_file_screen/new_file_screen.dart';
import 'package:the_docket/note_view/note_view.dart';

import '../database/database.dart';

class NoteCard extends StatefulWidget {
  const NoteCard({super.key, required this.i,required this.listName});
  final int i;
  final String listName;//notePage or trash page


  @override

  State<NoteCard> createState() => _NoteCardState();
}

class _NoteCardState extends State<NoteCard> {

 late Map tempMap = widget.listName == "list" ?  DataBase.list[widget.i] : DataBase.trashList[widget.i];

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
                title: "${tempMap['title']}",
                date: "${tempMap['date']}",
                note: "${tempMap['note']}",
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
                      "${tempMap['title']}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    Text(
                      "${tempMap['date']}",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Text(
                  "${tempMap['note']}",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
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
