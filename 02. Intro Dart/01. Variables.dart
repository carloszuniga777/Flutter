//Ejecutar: https://dartpad.dev/

void main() {


  //Final: Se asigna un valor en tiempo de ejecucion y su valor no cambiara. (Casi como la constante)
  final String nombre = "Carlos";    
  final int hp = 100;
  final bool isAlive = true;

  late final String apellido;      //Late: Que se va asignar un valor mas adelante 
 
  apellido = 'Zuniga';
   
  //Listas
  final List<String> abilities = ['Impostor'];
  final sprites = <String>['Impostor'];
  

  //Dinamic: Por defecto es null y acepta cualquier valor
  dynamic errorMessage= 'Error';  
          errorMessage = 1;
          errorMessage = [1,2,3,4,5];
          errorMessage = (1,2,3,4,5);
  
  
  //Maps
  final Map<String, dynamic> pokemon = {
    'name' : 'Ditto',
     'hp'   : 100 ,
     'IsAlive' : true,
     'abilities' : <String>['impostor'],
     'sprites' : <int, String>{
       1: 'ditto/front.png',
       2: 'ditto/back.png'
     }
  };
  
  
  
  
  print("""
     Hola ${nombre}
     Hola ${nombre.toUpperCase()}
     Apellido: ${apellido}
     ${hp}
     ${isAlive}
     ${abilities}
     ${sprites}
     ${errorMessage}
     ${pokemon}
     Name: ${ pokemon['name']}
     Sprites: ${ pokemon['sprites']}
     Sprites2: ${ pokemon['sprites'][1]}
     Sprites3: ${ pokemon['sprites'][2]}
  """);
  
}
