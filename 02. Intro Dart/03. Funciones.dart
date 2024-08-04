
//Ejecutar: https://dartpad.dev/


void main() {
   
  late int result;
  late String messegeResult;
  
  //Ejemplo 1
  result = addTwoNumberOptional(1, 2);
  
  print(result);

  
  //Ejemplo 2
  result = addTwoNumberOptional(1);
  
  print(result);
  
  
  
  //Ejemplo 3
  messegeResult = greetPerson(name: "Carlos");
  
  print(messegeResult);
  
  
  //Ejemplo 4
  messegeResult = greetPerson(name: "Carlos", messege: 'Buenos dias, ');
  
  print(messegeResult);
  
}


//Funcion con variable opcional [VariableOptional = valordefecto]
int addTwoNumberOptional(int a, [int b = 0]){
  return a + b; 
}


//Funciones con parametros nombrados
String greetPerson({required String name, String messege = 'Hola, '}){
  
  return '${messege} ${name}';
}