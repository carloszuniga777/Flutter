//Ejecutar: https://dartpad.dev/

void main() async{
  print('Inicio del programa');

  try{

    final value = await peticionHttpGet('www.google.com');
    print('Exito: $value');
  
  }on Exception catch(error){ 

    print('Tenemos una Exception Controlada: $error');

  }catch(error){

    print('Tenemos un error: $error');

  }finally{
    print('Fin peticion');
  }


  print('Fin del programa');
}


Future<String> peticionHttpGet(String url) async{

   await Future.delayed(const Duration(seconds: 1));

    //throw 'Error en la peticion 1';

    throw Exception('Error en la peticion');

    //return 'Tenemos un valor de la peticion';
}