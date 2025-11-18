import 'package:flutter/material.dart';

import '../database/database.dart';
class NoteCard extends StatelessWidget {
  const NoteCard({
    super.key, required int i,
  });



  @override
  Widget build(BuildContext context) {
    return Card(
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
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Text(
              "${DataBase().list[i]['note']}",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}