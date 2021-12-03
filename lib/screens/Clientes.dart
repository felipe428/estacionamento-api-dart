import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Clientes extends StatefulWidget {
  @override
  _Clientes createState() => _Clientes();
}

class _Clientes extends State<Clientes> {
  initState() {
    super.initState();
    _atualizar();
  }

  int _clienteId1 = 0;
  String _clienteNome1 = "";
  String _clienteCPF1 = "";
  String _clienteTelefone1 = "";
  String _cliente1 = "";

  int _clienteId2 = 0;
  String _clienteNome2 = "";
  String _clienteCPF2 = "";
  String _clienteTelefone2 = "";
  String _cliente2 = "";

  int _clienteId3 = 0;
  String _clienteNome3 = "";
  String _clienteCPF3 = "";
  String _clienteTelefone3 = "";
  String _cliente3 = "";

  int _clienteId4 = 0;
  String _clienteNome4 = "";
  String _clienteCPF4 = "";
  String _clienteTelefone4 = "";
  String _cliente4 = "";

  int _clienteId5 = 0;
  String _clienteNome5 = "";
  String _clienteCPF5 = "";
  String _clienteTelefone5 = "";
  String _cliente5 = "";

  int _clienteId6 = 0;
  String _clienteNome6 = "";
  String _clienteCPF6 = "";
  String _clienteTelefone6 = "";
  String _cliente6 = "";

  int _clienteId7 = 0;
  String _clienteNome7 = "";
  String _clienteCPF7 = "";
  String _clienteTelefone7 = "";
  String _cliente7 = "";

  int _clienteId8 = 0;
  String _clienteNome8 = "";
  String _clienteCPF8 = "";
  String _clienteTelefone8 = "";
  String _cliente8 = "";

  _atualizar() async {
    var url = 'https://api-estacionamento.herokuapp.com/clientes';
    var response = await http.get(Uri.parse(url));
    List<dynamic> retorno = convert.jsonDecode(response.body);
    setState(() {
      _clienteId1 = retorno[0]["id"];
      _clienteNome1 = retorno[0]["nome"];
      _clienteCPF1 = retorno[0]["cpf"];
      _clienteTelefone1 = retorno[0]["telefone"];
      _cliente1 =
          "\nID: $_clienteId1 \nNome: $_clienteNome1 \nCPF: $_clienteCPF1 \nTelefone: $_clienteTelefone1";

      _clienteId2 = retorno[1]["id"];
      _clienteNome2 = retorno[1]["nome"];
      _clienteCPF2 = retorno[1]["cpf"];
      _clienteTelefone2 = retorno[1]["telefone"];
      _cliente2 =
          "\nID: $_clienteId2 \nNome: $_clienteNome2 \nCPF: $_clienteCPF2 \nTelefone: $_clienteTelefone2";

      _clienteId3 = retorno[2]["id"];
      _clienteNome3 = retorno[2]["nome"];
      _clienteCPF3 = retorno[2]["cpf"];
      _clienteTelefone3 = retorno[2]["telefone"];
      _cliente3 =
          "\nID: $_clienteId3 \nNome: $_clienteNome3 \nCPF: $_clienteCPF3 \nTelefone: $_clienteTelefone3";

      _clienteId4 = retorno[3]["id"];
      _clienteNome4 = retorno[3]["nome"];
      _clienteCPF4 = retorno[3]["cpf"];
      _clienteTelefone4 = retorno[3]["telefone"];
      _cliente4 =
          "\nID: $_clienteId4 \nNome: $_clienteNome4 \nCPF: $_clienteCPF4 \nTelefone: $_clienteTelefone4";

      _clienteId5 = retorno[4]["id"];
      _clienteNome5 = retorno[4]["nome"];
      _clienteCPF5 = retorno[4]["cpf"];
      _clienteTelefone5 = retorno[4]["telefone"];
      _cliente5 =
          "\nID: $_clienteId5 \nNome: $_clienteNome5 \nCPF: $_clienteCPF5 \nTelefone: $_clienteTelefone5";

      _clienteId6 = retorno[5]["id"];
      _clienteNome6 = retorno[5]["nome"];
      _clienteCPF6 = retorno[5]["cpf"];
      _clienteTelefone6 = retorno[5]["telefone"];
      _cliente6 =
          "\nID: $_clienteId6 \nNome: $_clienteNome6 \nCPF: $_clienteCPF6 \nTelefone: $_clienteTelefone6";

      _clienteId7 = retorno[6]["id"];
      _clienteNome7 = retorno[6]["nome"];
      _clienteCPF7 = retorno[6]["cpf"];
      _clienteTelefone7 = retorno[6]["telefone"];
      _cliente7 =
          "\nID: $_clienteId7 \nNome: $_clienteNome7 \nCPF: $_clienteCPF7 \nTelefone: $_clienteTelefone7";

      _clienteId8 = retorno[7]["id"];
      _clienteNome8 = retorno[7]["nome"];
      _clienteCPF8 = retorno[7]["cpf"];
      _clienteTelefone8 = retorno[7]["telefone"];
      _cliente8 =
          "\nID: $_clienteId8 \nNome: $_clienteNome8 \nCPF: $_clienteCPF8 \nTelefone: $_clienteTelefone8";
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estaci.one"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 0, 10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text('Clientes',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0, color: Colors.black)),
            TextButton(
                onPressed: _atualizar,
                child: Text("Atualizar",
                    style:
                        TextStyle(fontSize: 30.0, color: Colors.purple[700]))),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente1",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente2",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente3",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente4",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente5",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente6",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente7",
                style: TextStyle(fontSize: 19),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: Text(
                "$_cliente8",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
