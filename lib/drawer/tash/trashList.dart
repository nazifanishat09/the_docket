import 'package:flutter/material.dart';
import 'package:the_docket/database/database.dart';
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
        leading: InkWell(onTap: (){
          Navigator.pop(context);
        },child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
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
            itemBuilder: (context, i){
          return NoteCard(i: i,);
        }),
      ),
    );
  }
}
