import 'package:flutter/material.dart';

class status extends StatefulWidget {
  const status({Key? key}) : super(key: key);

  @override
  _statusState createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 70,
                child: _listDados('Meu status', 'asset/imagem/icon2.png',
                    'Toque para atualizar seu status'),
              ),
              Positioned(
                bottom: 5,
                left: 50,
                child: Container(
                  width: 30,
                  height: 22,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff128C7E),
                    radius: 10,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'Atualizações vistas',
                style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff78868f),
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            height: 70,
            child:
                _listDados('Natália', 'asset/imagem/icon3.png', 'há 9 minutos'),
          ),
          SizedBox(
            height: 70,
            child: _listDados(
                'Vanessa', 'asset/imagem/icon6.png', 'há 45 minutos'),
          ),
          SizedBox(
            height: 70,
            child:
                _listDados('Fernanda', 'asset/imagem/icon7.png', 'Hoje 11:33'),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: 45,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.grey[200],
              child: const Icon(
                Icons.edit,
                color: Colors.black54,
                size: 25,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xff128C7E),
            child: const Icon(Icons.camera_alt_rounded),
          )
        ],
      ),
    );
  }
}

_listDados(String nome, String imagem, String descrip) {
  var nomeInicial = nome[0].toUpperCase();
  var msgInicial = descrip[0].toUpperCase();
  if (imagem.length > 0) {
    nomeInicial = "";
  }
  if (imagem.length > 0) {
    msgInicial = "";
  }
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(imagem),
      radius: 30,
    ),
    title: Text(
      nome,
      style: TextStyle(
        fontSize: 15,
        color: Color(0xff54656f),
        fontWeight: FontWeight.w500,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    ),
    subtitle: Text(
      descrip,
      style: TextStyle(color: Color(0xff78868f)),
    ),
  );
}
