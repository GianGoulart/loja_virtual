import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:loja_virtual/screens/category_screens.dart';

class CategoryTiles extends StatelessWidget {

  final DocumentSnapshot snapshot;
  CategoryTiles(this.snapshot);

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: CircleAvatar(
        radius: 25.0,
        backgroundColor: Colors.transparent,
        backgroundImage: NetworkImage(snapshot.data["icon"]),
      ),
      title: Text(snapshot.data["title"], style: TextStyle(color: Colors.white),),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.white,),
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => CategoryScreen(snapshot)),
        );
      },
    );
  }  
}