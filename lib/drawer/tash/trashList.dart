import 'dart:core';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:the_docket/database/database.dart';
import 'package:the_docket/widget/note.dart';
import 'package:the_docket/widget/note_card.dart';

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
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
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
      body: Center(
        child: ListView.builder(
          itemCount: DataBase.trashList.length,
          itemBuilder: (context, i) {
            return InkWell(
             onLongPress:  () {
               showDialog(context: context, builder: (a)=>AlertDialog(
                 title: Text("Confirm action"),
                 content:Text("Are you sure that you want to permanently delete this note?") ,
                 actions: [
                   InkWell(onTap: (){
                     DataBase.list.add(DataBase.trashList[i]);
                     DataBase.trashList.removeAt(i);
                     setState(() {});
                     Navigator.pop(context);
                   },
                       child: Text("Restore",style: TextStyle(color: Colors.green),)),SizedBox(width: 25,),
                   InkWell(onTap: (){
                     DataBase.trashList.removeAt(i);

                     setState(() {

                     });
                   },
                       child: Text("Delete",style: TextStyle(color: Colors.red),)),SizedBox(width: 25,),
                   InkWell(onTap: (){
                     Navigator.pop(context);
                   },
                       child: Text("Cancel")),
                 ],
               ));
             },
              child: NoteCard(i: i, listName: 'trashList',),
            );
          },
        ),
      ),
    );
  }
}
