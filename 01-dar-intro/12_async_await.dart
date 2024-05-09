void main()async{
  print('Inicio del programa');
  
  try{
    
    final value = await httpGet('http://harodl');
    print(value);
    
  }catch(err){
    print('Hay un error: $err');
  }
  
  print('Final del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed( const Duration(seconds:1));
  throw 'Error';
//   return 'Tenemos un valor en la peticion';
  
}