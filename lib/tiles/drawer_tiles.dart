import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  
  final PageController controller;
  final int page;  
  final IconData icon;
  final String text;

  DrawerTile(this.icon, this.text, this.controller, this.page);

  @override
  Widget build(BuildContext context){
    return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
            Navigator.of(context).pop();
            controller.jumpToPage(page);
          },
          child: Container(
            height: 60.0,
            child: Row(
              children: <Widget>[
                Icon(icon, size:32.0, color: controller.page.round() == page? Colors.blueGrey: Colors.black,),
                SizedBox(width: 32.0,),
                Text(text, style:TextStyle(fontSize:16.0, color: controller.page.round() == page? Colors.blueGrey: Colors.black,))
              ],
            ),
          ),
        ),
    );

  }
}