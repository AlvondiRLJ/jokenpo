import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo");
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //text
          //imagem
          //text resultado
          //Linha 3 imagens
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          GestureDetector(
            onTap: (){ print("Um click na imagem!");},
            onDoubleTap: (){ print("Dois cliques na imagem!");},
            onLongPress: (){ print("Clique longo na imagem!");},
            child: Image.asset("image/padrao.png"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Row(
            mainAxixAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("image/pedra.png", height: 100),
              Image.asset("image/papel.png", height: 100),
              Image.asset("image/tesoura.png", height: 100)
            ],
          ),
        ],
      ),
    );
  }
}
