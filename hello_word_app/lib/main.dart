import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(                //Widget raiz de la aplicacion
      debugShowCheckedModeBanner: false,     //quita la etiqueta modo desarrollo
      home: Scaffold(                        //Implementa un diseño basico en la interfaz y da las bases para colocar,menus,barras,etc.  
        body: Center(child: Text("Hola mundo")),
      )
    );
  }

}
