import 'package:flutter/material.dart';
import 'package:loja_virtual/datas/products_data.dart';
import 'package:loja_virtual/screens/products_screens.dart';

class ProductTile extends StatelessWidget{

  final String type;
  final ProductData products;

  ProductTile(this.type, this.products);

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => ProductScreen(products))
        );
      },
      child: Card(
        child: type == "grid"?
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 0.8,
              child: Image.network(
                products.images[0],
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(products.title, style:TextStyle(fontWeight:FontWeight.w500)),
                    Text(
                      "R\$ ${products.price.toStringAsFixed(2)}", 
                      style:TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight:FontWeight.bold
                      )
                    ),
                  ],
                ),
              ),
            )
          ],
        )
        :Row(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Image.network(
                products.images[0],
                fit: BoxFit.cover,
                height: 250.0,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Text(products.title, style:TextStyle(fontWeight:FontWeight.w500)),
                    Text(
                      "R\$ ${products.price.toStringAsFixed(2)}", 
                      style:TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight:FontWeight.bold
                      )
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}