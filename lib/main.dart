import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mercado_proy/src/screens/02_IniciodeSesion.dart';
import 'package:flutter_mercado_proy/src/screens/03_RegistroUsuario.dart';
import 'package:flutter_mercado_proy/src/screens/01_AdminUsers.dart';

void main(List<String> args) {
  runApp(ProyectoMercadoLibre());
}

class ProyectoMercadoLibre extends StatelessWidget {
  const ProyectoMercadoLibre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: PaginadeInicio(),
      home: PaginadeRegistro(),
      routes: {
        '/registro': (context) => PaginadeRegistro(),
        '/inicio': (context) => PaginadeInicio(),
        //PaginadeRegistro es el nombre de la clase
      },
    );
  }
}

///////////////////////////
