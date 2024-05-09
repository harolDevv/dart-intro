void main() {
  print(greetEveryone());
  print(addTwoNumbers(10, 20));
  print(greetNames(name: 'Harold', message:'Hi,'));
}

String greetEveryone() => 'Hello'; // arrow no cuerpo de funcion

int addTwoNumbers(int a, int b) => a + b;

int addTwoNumbersOptional(int a, [int b = 0]) {
  //   b = b ?? 0;

  // b es igual a cero si no hay b

//   b ??= 0;

  return a + b;
}

String greetNames({required String name, String message = 'Hola,'}) {
  return '$message $name';
} // parametos con nombre {required name,message} // es requerido
