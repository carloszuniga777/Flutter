//Ejecutar: https://dartpad.dev/

void main() {
    
  //List
  final numbers = [1,2,3,4,5,5,5,6,6,6, 7, 8, 9, 10];
  
  //Iterable
  final reversedNumbers = numbers.reversed;
  
  //where metodo de los listados para aplicar filtro
  final numberGreaterThan5 = numbers.where( (int num){
    return num > 5; 
  });
  
  
  
  print("""
   Lista original: $numbers
   Tamano: ${numbers.length}
   Elemento: ${numbers[0]}
   First: ${numbers.first}
   Reversed: ${numbers.reversed}
   Iterable: ${reversedNumbers}
   List: ${reversedNumbers.toList()}
   Set (Valores Unicos): ${reversedNumbers.toSet()}
   >5 Iterable: ${numberGreaterThan5}
   >5 Set: ${numberGreaterThan5.toSet()}
   
  """);
    
}

