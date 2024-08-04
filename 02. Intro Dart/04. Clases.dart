//Ejecutar: https://dartpad.dev/


void main() {
   
   //final Hero wolverine = Hero('Logan','Regeneracion');

  
   final Hero wolverine = Hero(name: 'Logan', power:'Regeneracion', isAlive: true);
  
  final Hero ciclope = Hero(name: 'Ciclope', isAlive: false);

  
   print(wolverine);
   print(wolverine.name);
   print(wolverine.power);
   print(ciclope.name);
   print(ciclope.power);
   print(wolverine.toString());
  
  
  //------------------------------
  
   //Suponiendo que fuera una json desde una peticion
  //Map
  final Map<String, dynamic> rawJson = {
    'name' : 'Tony Stark',
    'power' : 'Money',
    'isAlive' : true
  };
  
  //Creacion del objeto desde una peticion
  final Hero ironman = Hero.fromJson(rawJson);
  
  
  
  /*
  final Hero ironman = Hero(
   isAlive: rawJson['isAlive'] ?? false,
   power: 'Money',
   name: 'Tony Stark' 
  );
  */
  
   
  
  print(ironman);
  

}

//Clase
class Hero{
  String name;
  String power;
  bool isAlive;
  
  
  
  //Contructor
  Hero({
    required this.name, 
    this.power ="Sin Poder",
    required this.isAlive
    });
  
  //Contructor
  Hero.fromJson(Map<String, dynamic> json) :
    name = json['name'] ?? 'No name found',
    power = json['power'] ?? 'No power found',
    isAlive = json['isAlive'] ?? false;
  
  
  
  //Contructor
  //Hero(this.name, this.power);
  
  //Contructor
  /*Hero(String pName, String pPower) : 
    name = pName,
    power = pPower;
  */
  
  @override
  String toString(){
    return '${name},  ${power}, isAlive: ${ isAlive ? 'YES' : 'NO'}';
  }
  
  
}