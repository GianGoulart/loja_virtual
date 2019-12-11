import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:loja_virtual/tiles/category_tiles.dart';

class ProductsTab extends StatelessWidget {
  @override

  Widget build(BuildContext context){
    Widget _buildbodyback()=>Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.grey
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
    );

    return Stack(
      children: <Widget>[
        _buildbodyback(),
        FutureBuilder<QuerySnapshot>(
          future: Firestore.instance.collection("products").getDocuments(),
          builder: (context, snapshot) {
            if (!snapshot.hasData)
              return Center(
                child: CircularProgressIndicator(),
              );
            else {
              var dividedTiles = ListTile
                  .divideTiles(
                      tiles: snapshot.data.documents.map((doc) {
                        return CategoryTiles(doc);
                      }).toList(),
                      color: Colors.grey[500])
                  .toList();

              return ListView(
                children: dividedTiles,
              );
            }
          },
        )
      ]
    );
  }
}