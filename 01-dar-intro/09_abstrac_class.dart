void main(){
  
    final windPlant = WindPlant(initialEnergy: 100);
    final nuclearPlant = NuclearPlant(energyLeft: 1000);
    print(windPlant);
    print(nuclearPlant);
  
}


double changuePhone(EnergyPlant plant ){
  if(plant.energyLeft < 10){
    throw Exception('Not enough');
  }
  return plant.energyLeft - 10;
}


enum PlantType{ nuclear, wind, water }

abstract class EnergyPlant{
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({required this.energyLeft, required this.type});
  
  
  // tienes que implementar en las extensiones que hagas
  void consumeEnergy(double amount);
  
}


// extends o implements

//mas general
class WindPlant extends EnergyPlant{
  
  WindPlant({required double initialEnergy}) //super - padre
    : super( energyLeft: initialEnergy, type: PlantType.wind );
  
  @override
  void consumeEnergy(double amount){ //exactamente igual a al def del padre
     energyLeft = energyLeft - amount;
  }
}


//especifico
class NuclearPlant implements EnergyPlant{
  double energyLeft;
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount){ //exactamente igual a al def del padre
     energyLeft = energyLeft - amount * 0.5;
  }
}