import 'package:flutter/material.dart';

class conversa extends StatefulWidget {
  const conversa({Key? key}) : super(key: key);

  @override
  _conversaState createState() => _conversaState();
}

class _conversaState extends State<conversa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: _listDados('Amigos ', 'asset/imagem/icongrupo.png',
                  'Cinema hoje?', '19:22'),
            ),
            SizedBox(
              height: 70,
              child: _listDados('Familia Silva', 'asset/imagem/iconfa.png',
                  'Bom dia, vovó!', '19:20'),
            ),
            SizedBox(
              height: 70,
              child: _listDados(
                  'Férias', 'asset/imagem/iconwok.png', 'Finalmente!', '19:20'),
            ),
            SizedBox(
              height: 70,
              child: _listDados('Sarah RH', 'asset/imagem/icon8.png',
                  'Documentos entregues', '19:20'),
            ),
            SizedBox(
              height: 70,
              child: _listDados('Alice Oliveira', 'asset/imagem/icon1.png',
                  'Boa viagem!!!', '19:20'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff128C7E),
        child: const Icon(Icons.chat),
      ),
    );
  }
}

_listDados(String nome, String imagem, String descrip, String hora) {
  var nomeInicial = nome[0].toUpperCase();
  var msgInicial = descrip[0].toUpperCase();
  var time = hora;
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
    subtitle: Row(
      children: [
        Icon(
          Icons.done_all,
          size: 17,
          color: Colors.grey,
        ),
        SizedBox(
          width: 3,
        ),
        Text(
          descrip,
          style: TextStyle(
            color: Color(0xff78868f),
          ),
        ),
      ],
    ),
    trailing: Text(
      time,
      style: TextStyle(
        fontSize: 11,
        color: Color(0xff78868f),
      ),
    ),
  );
}
