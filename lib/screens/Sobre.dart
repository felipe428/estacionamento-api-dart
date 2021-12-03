import 'package:flutter/material.dart';

import 'package:estacionamento_api/screens/Clientes.dart';
import 'package:estacionamento_api/screens/Carros.dart';

class Sobre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Clientes"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Clientes()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.car_repair),
                title: Text("Carros"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Carros()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.app_settings_alt_sharp),
                title: Text("Sobre"),
                trailing: Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sobre()),
                  );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Sobre"),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xFFF8F8FF),
          padding: const EdgeInsets.all(30),
          alignment: Alignment.center,
          child: ListTile(
            title: Text("Estaci.one - versão 1.0"),
            subtitle: Text(
                "Desenvolvida por Felipe Silva, Pedro Augusto Targhetta, Renê Pádua, Thais Silva"),
          ),
        ));
  }
}
