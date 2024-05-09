void main() {
  
  // lo que recibiria de una api
  final Map<String, dynamic> rawJson = {
    'name' : 'Superman',
    'power' : 'Strong',
    'isAlive' : true
  };
  
  
// aqui asiganmos una instancia de la clase yo dandole los valores  
//   final ironman = Hero(
//     isAlive: false,
//     power: 'Money',
//     name:'Antony'
//   );
  
  final Hero ironman = Hero.toJsonInstance(rawJson);
  
  print(ironman.toString());
  
}

class Hero{
  
  String name;
  String power;
  bool isAlive;
  
  //este constructor no recibe nada externo 
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //constructor por nombres, que se llama a inciiar una instancia
  // este contructor recibe un json 
  // no te olvides de la evaluacion
  Hero.toJsonInstance(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name',
      power = json['power'] ?? 'No power',
      isAlive = json['isAlive'] ?? false;
  
  @override
  String toString(){
    return '$name, $power, isAlive: ${isAlive ? 'YES' : 'Nope'}';
  }
  
}
