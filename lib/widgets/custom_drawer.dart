import 'package:flutter/material.dart';
import 'package:loja_virtual/tiles/drawer_tiles.dart';

class CustomDrawer extends StatelessWidget {

  final PageController pageController;

  CustomDrawer(this.pageController);

  Widget _builddrawerback()=>Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.white,
          Colors.black
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter
      )
    ),
  );

  @override
  Widget build(BuildContext context){
    return Drawer(
      child:Stack(
        children: <Widget>[
          _builddrawerback(),
          ListView(
            padding: EdgeInsets.only(left: 30.0, top:15.0),
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 8.0),
                padding: EdgeInsets.fromLTRB(0.0, 16.0, 16.0, 8.0),
                height: 170.0,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 8.0,
                      left: 8.0,
                      child: Text("Goulart's \n Clothing", 
                        style:TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Olá,", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0)),
                          GestureDetector(
                            child: Text("Entre ou cadastra-se >", 
                              style:TextStyle(fontWeight: FontWeight.bold, 
                                color: Colors.blueGrey,fontSize:18.0),
                            ),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
              Divider(),
              DrawerTile(Icons.home, "Inicio", pageController,0),
              DrawerTile(Icons.list, "Produtos", pageController,1),
              DrawerTile(Icons.location_on, "Lojas", pageController,2),
              DrawerTile(Icons.playlist_add_check, "Meus Pedidos", pageController,3),
            ],
          ),

        ],
      ) 
    );
  } 
}