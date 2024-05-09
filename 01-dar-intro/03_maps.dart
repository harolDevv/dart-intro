void main() {
  // tipo de dato map
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Impostor'],
    'sprites': <int, String>{1: 'ditto.png', 2: 'sitto.jpg'}
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['hp']}');

  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}