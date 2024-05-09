void main() {
  final Hero wolverine = Hero(name: 'Logan', power: 'Adamantium');

  print(wolverine.toString());
}

class Hero {
  String name;
  String power;

  Hero({
      required this.name,
      this.power ='Sin poder'
  }); // auto asignacion de name a name y power de power

//   Hero(String pName, String pPower)
//     : name = pName,
//       power = pPower;

  @override
  String toString() { // toName no soobreescribe es decir es un metodo mio
    return '$name';
  }
  
}
