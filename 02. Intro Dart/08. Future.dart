//Ejecutar: https://dartpad.dev/

void main(){
  print('Inicio del programa');

  peticionHttpGet('www.google.com').then( (value){
    print( value );
  }).catchError((error){
    print('Error: $error');
  });

  print('Fin del programa');
}


Future<String> peticionHttpGet(String url){

  return Future.delayed(const Duration(seconds: 1), (){
      throw 'Error en la peticion http';

      //return 'Respuesta de la peticion http';
  });
}