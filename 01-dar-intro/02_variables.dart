void main(){
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['impostor'];
  final sprites = <String>['impostor'];
  
  dynamic erroMessage = 'Hola'; //dyncamic puede ser cualquier valor que tu le asignes 
  
  
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $sprites 
    $erroMessage
  """)
  
}