import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Carros extends StatefulWidget {
  @override
  _Carros createState() => _Carros();
}

class _Carros extends State<Carros> {
  initState() {
    super.initState();
    _atualizar();
  }

  int _carroId1 = 0;
  String _marca1 = "";
  String _modelo1 = "";
  String _cor1 = "";
  String _placa1 = "";
  String _carro1 = "";

  int _carroId2 = 0;
  String _marca2 = "";
  String _modelo2 = "";
  String _cor2 = "";
  String _placa2 = "";
  String _carro2 = "";

  int _carroId3 = 0;
  String _marca3 = "";
  String _modelo3 = "";
  String _cor3 = "";
  String _placa3 = "";
  String _carro3 = "";

  int _carroId4 = 0;
  String _marca4 = "";
  String _modelo4 = "";
  String _cor4 = "";
  String _placa4 = "";
  String _carro4 = "";

  int _clienteId1 = 0;
  String _clienteNome1 = "";
  String _clienteCPF1 = "";
  String _cliente1 = "";

  int _clienteId2 = 0;
  String _clienteNome2 = "";
  String _clienteCPF2 = "";
  String _cliente2 = "";

  int _clienteId3 = 0;
  String _clienteNome3 = "";
  String _clienteCPF3 = "";
  String _cliente3 = "";

  int _clienteId4 = 0;
  String _clienteNome4 = "";
  String _clienteCPF4 = "";
  String _cliente4 = "";

  _atualizar() async {
    var url = 'https://api-estacionamento.herokuapp.com/carros';
    var response = await http.get(Uri.parse(url));
    List<dynamic> retorno = convert.jsonDecode(response.body);
    setState(() {
      _carroId1 = retorno[0]["id"];
      _marca1 = retorno[0]["marca"];
      _modelo1 = retorno[0]["modelo"];
      _cor1 = retorno[0]["cor"];
      _placa1 = retorno[0]["placa"];
      _carro1 =
          "\nID: $_carroId1 \nMarca: $_marca1 \nModelo: $_modelo1 \nCor: $_cor1 \nPlaca: $_placa1";

      _carroId2 = retorno[1]["id"];
      _marca2 = retorno[1]["marca"];
      _modelo2 = retorno[1]["modelo"];
      _cor2 = retorno[1]["cor"];
      _placa2 = retorno[1]["placa"];
      _carro2 =
          "\nID: $_carroId2 \nMarca: $_marca2 \nModelo: $_modelo2 \nCor: $_cor2 \nPlaca: $_placa2";

      _carroId3 = retorno[2]["id"];
      _marca3 = retorno[2]["marca"];
      _modelo3 = retorno[2]["modelo"];
      _cor3 = retorno[2]["cor"];
      _placa3 = retorno[2]["placa"];
      _carro3 =
          "\nID: $_carroId3 \nMarca: $_marca3 \nModelo: $_modelo3 \nCor: $_cor3 \nPlaca: $_placa3";

      _carroId4 = retorno[3]["id"];
      _marca4 = retorno[3]["marca"];
      _modelo4 = retorno[3]["modelo"];
      _cor4 = retorno[3]["cor"];
      _placa4 = retorno[3]["placa"];
      _carro4 =
          "\nID: $_carroId4 \nMarca: $_marca4 \nModelo: $_modelo4 \nCor: $_cor4 \nPlaca: $_placa4";

      _clienteId1 = retorno[0]["cliente"]["id"];
      _clienteNome1 = retorno[0]["cliente"]["nome"];
      _clienteCPF1 = retorno[0]["cliente"]["cpf"];
      _cliente1 = "$_clienteId1 \nNome: $_clienteNome1 \nCPF: $_clienteCPF1";

      _clienteId2 = retorno[1]["cliente"]["id"];
      _clienteNome2 = retorno[1]["cliente"]["nome"];
      _clienteCPF2 = retorno[1]["cliente"]["cpf"];
      _cliente2 = "$_clienteId2 \nNome: $_clienteNome2 \nCPF: $_clienteCPF2";

      _clienteId3 = retorno[2]["cliente"]["id"];
      _clienteNome3 = retorno[2]["cliente"]["nome"];
      _clienteCPF3 = retorno[2]["cliente"]["cpf"];
      _cliente3 = "$_clienteId3 \nNome: $_clienteNome3 \nCPF: $_clienteCPF3";

      _clienteId4 = retorno[3]["cliente"]["id"];
      _clienteNome4 = retorno[3]["cliente"]["nome"];
      _clienteCPF4 = retorno[3]["cliente"]["cpf"];
      _cliente4 = "$_clienteId4 \nNome: $_clienteNome4 \nCPF: $_clienteCPF4";
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
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Carros',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 32.0, color: Colors.black)),
                  TextButton(
                      onPressed: _atualizar,
                      child: Text("Atualizar",
                          style: TextStyle(
                              fontSize: 30.0, color: Colors.purple[700]))),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      "$_carro1 \nCliente: $_cliente1",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      "$_carro2 \nCliente: $_cliente2",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      "$_carro3 \nCliente: $_cliente3",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 15),
                    child: Text(
                      "$_carro4 \nCliente: $_cliente4",
                      style: TextStyle(fontSize: 19),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
