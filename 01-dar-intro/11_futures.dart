void main(){
  print('Inicio del programa');
  
  httpGet('http://harodl')
    .then((value){ // valor obtenido
      print(value);
     })
    .catchError((err){
     print('Error $err');
    }
   );
  
  print('Final del programa');
}

Future<String> httpGet(String url){
  return Future.delayed( const Duration(seconds:1),(){
    throw 'Error en la peticion';
//     return 'Respuesta de la peticion http';
  });
}