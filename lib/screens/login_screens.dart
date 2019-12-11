import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Form(
        key: _formkey,
        child: ListView(
        padding: EdgeInsets.all(15.0),
          children: <Widget>[
            Container(
              child: Image.network("https://firebasestorage.googleapis.com/v0/b/lojaflutter-3c841.appspot.com/o/1bbfcf93-9279-40c8-ab30-daf471e596e7.png?alt=media&token=13749695-6a9d-4a6e-93b8-dde97b3edd74"),                
            ),
            SizedBox(
              height: 60.0,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username"
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (text){
                  if(text.isEmpty || !text.contains("@"))return "* Email inválido";
                },
              ),
            ),
            SizedBox(
              height: 30.0,
              child:TextFormField(
                decoration: InputDecoration(
                  hintText: "Password"
                ),
                obscureText: true,
                validator: (text){
                  if(text.isEmpty || text.length < 6)return "* Senha inválida";
                },
              )
            ),
            Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                onPressed: (){},
                child: Text("Esqueci minha senha", textAlign: TextAlign.right,),
                padding: EdgeInsets.zero,
              ),
            ),
            SizedBox(
              height: 40.0,
              child: RaisedButton(
                onPressed: () {
                  if (_formkey.currentState.validate()){

                  }
                },
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text("Entrar", style: TextStyle(fontSize: 15.0,),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text( "---- ou ----",),
              ] 
            ),
            SizedBox(
              height: 40.0,
              child: RaisedButton(
                onPressed: () {
                  if (_formkey.currentState.validate()){

                  }
                },
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                child: Text("Cadastrar-se", style: TextStyle(fontSize: 15.0,),),
              ),
            ),

          ],
        ),
      )
    );
  }
}