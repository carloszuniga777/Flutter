//Ejecutar: https://dartpad.dev/

void main() {
  late double energy;

  final WindPlant windPlan = WindPlant(initialEnergy: 100);
  final NuclearPlan nuclearPlan = NuclearPlan(energyLeft: 1000);


  //funcion
  energy = chargePhone(windPlan);
  
  print('wind: ${energy}');



  //Funcion 
  energy = chargePhone(nuclearPlan);
  
  print('nuclear: ${energy}');


}


//Enumeracion
enum PlantType { nuclear, wind, water }


//Clase abstracta
abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });
  
  void consumeEnergy( double amount );
}


//Extends: Herencia
class WindPlant extends EnergyPlant{
  
  //Contructor
  WindPlant({ required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount){
      energyLeft -= amount;
  }
  
 }


//Implement: Implementacion de la clase abstracta
class NuclearPlan implements EnergyPlant{
  @override
  double energyLeft;
  
   @override
  final PlantType type = PlantType.nuclear;

  NuclearPlan({ required this.energyLeft});

   @override
  void consumeEnergy(double amount){
      energyLeft -= (amount * 0.5);
  }

}





//Funcion espera recibir una clase que extienda de la clase abstracta EnergyPlant

double chargePhone(EnergyPlant plant){
  if( plant.energyLeft < 10){
    throw Exception('Not enought energy');
  }
  
  return plant.energyLeft - 10;
}


