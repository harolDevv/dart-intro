void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 10, 2, 3, 5, 89];

  print('$numbers');
  print('$numbers.length');
  print('$numbers[0]');
  print('$numbers.first');
  print('$numbers.reversed');
  //iterables(1,2,3)
  final reversedNumbers = numbers.reversed;

  print(reversedNumbers.toSet());
  print(reversedNumbers.toList());

  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });
  ;
  print(numbersGreaterThan5.toList());
}