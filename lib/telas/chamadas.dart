import 'package:flutter/material.dart';

class chamadas extends StatefulWidget {
  const chamadas({Key? key}) : super(key: key);

  @override
  _chamadasState createState() => _chamadasState();
}

class _chamadasState extends State<chamadas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              child: _listChamadas(
                  'Francisco', 'asset/imagem/icon10.png', 'Agora mesmo'),
            ),
            SizedBox(
              child: _listChamadas(
                  'Gabriela', 'asset/imagem/icon11.png', 'há 30 minutos'),
            ),
            SizedBox(
              child: _listChamadas(
                  'Daniel', 'asset/imagem/icon5.png', '22 de fevereiro 06:56'),
            ),
          ],
        ),
      ),
    );
  }
}

_listChamadas(String nome, String imagem, String descrip) {
  var nomeInicial = nome[0].toUpperCase();
  var msgInicial = descrip[0].toUpperCase();
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
    subtitle: Row(
      children: [
        Icon(
          Icons.call_made_outlined,
          size: 17,
          color: Colors.green,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          descrip,
          style: TextStyle(color: Color(0xff78868f)),
        ),
      ],
    ),
    trailing: Icon(
      Icons.call,
      color: Colors.green,
    ),
  );
}
