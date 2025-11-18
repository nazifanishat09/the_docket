import 'package:flutter/material.dart';

class search_filed extends StatelessWidget {
  const search_filed({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 370,
      // height: 50,
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Search..",
          prefixIcon: Icon(Icons.search,color: Colors.grey,),
          hintStyle: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700,fontStyle: FontStyle.italic),
          filled: true,
          fillColor: Colors.deepPurple[50],
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,

            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}