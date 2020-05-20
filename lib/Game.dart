import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "JokenPô Game",
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "Escolha do App",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20
              ),
            ),
          ),
          GestureDetector(
            onTap: () { print ("image selected");},
            child: Image.asset("assets/images/padrao.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "Escolha do usuário",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("assets/images/pedra.png", height: 100,),
              Image.asset("assets/images/papel.png", height: 100),
              Image.asset("assets/images/tesoura.png", height: 100),
            ],
          )
        ],
      ),
    );
  }
}
