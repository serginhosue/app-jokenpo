import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  var _imageApp = AssetImage("assets/images/padrao.png");
  var _message = "Escolha a opção abaixo:";

  void _optionSelected(String _chosse) {
    var _options = ["pedra", "papel", "tesoura"];
    var _number = Random().nextInt(3);
    var _chosseApp = _options[_number];

    switch (_chosseApp) {
      case "pedra":
        setState(() {
          this._imageApp = AssetImage("assets/images/pedra.png");
        });
        break;

      case "papel":
        setState(() {
          this._imageApp = AssetImage("assets/images/papel.png");
        });
        break;

      case "tesoura":
        setState(() {
          this._imageApp = AssetImage("assets/images/tesoura.png");
        });
        break;
    }

    if ((_chosse == "pedra" && _chosseApp == "tesoura") ||
        (_chosse == "tesoura" && _chosseApp == "papel") ||
        (_chosse == "papel" && _chosseApp == "pedra")) {
      setState(() {
        _message = "Parabéns você GANHOU!!!!";
      });
    } else if ( (_chosseApp == "pedra" && _chosse == "tesoura") ||
                (_chosseApp == "tesoura" && _chosse == "papel") ||
                (_chosseApp == "papel" && _chosse == "pedra")) {

      setState(() {
        _message = "Que pena você perdeu :(. \nTente de novamente.";
      });

    } else {
      setState(() {
        _message = "Vixi deu empate :O! \n Tente novamtente.";
      });

    }
  }

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
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
          ),
          Image(image: this._imageApp),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              this._message,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _optionSelected("pedra"),
                child: Image.asset(
                  "assets/images/pedra.png",
                  height: 100,
                ),
              ),
              GestureDetector(
                onTap: () => _optionSelected("papel"),
                child: Image.asset("assets/images/papel.png", height: 100),
              ),
              GestureDetector(
                onTap: () => _optionSelected("tesoura"),
                child: Image.asset("assets/images/tesoura.png", height: 100),
              ),
            ],
          )
        ],
      ),
    );
  }
}
