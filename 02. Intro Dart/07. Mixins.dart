//Ejecutar: https://dartpad.dev/


abstract class Animal{}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

//Los mixin son lo mismo que las clases abstractas, es un tipo de especializacion de una clase' 
//y sirven para implemnentar mas de dos clases abstractas a una clase
mixin Volador{
  void volar()=> print('Estoy volando');
}


mixin Caminante{
  void caminar()=> print('Estoy caminando');
}



mixin Nadador{
  void nadar()=> print('Estoy nadando');
}

//Implementando Mixins
class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador, Caminante{}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Caminante, Volador{}
class Pato extends Ave with Volador, Caminante, Nadador{}

class Tiburon extends Pez with Nadador{}




void main() {

  final Delfin flipper = Delfin(); 
  flipper.nadar();

  final Murcielago batman = Murcielago();
  batman.caminar();
  batman.volar();

  final Pato donald = Pato();
  donald.caminar();
  donald.nadar();
  donald.volar();  

}
