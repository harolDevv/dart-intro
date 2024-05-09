void main() {
  final Square area = Square(side: 10);

  print('area: ${area.area}');
}

class Square {
  double _side; // side * side

  Square({required double side})
    : _side = side;
  
  double get area{
    return _side * _side;
  }
  
  set side(double value){
    print('setting new value $value');
    if(value < 0 ) throw 'Value most be >0';
    
    _side = value;
  }

  double calculateArea() {
    return _side * _side; // double es la clase de valor que devolvera este metodo
  }
}


void main() {
  final Square area = Square(side: 10);

  print('area: ${area.area}');
}

class Square {
  double _side; // side * side

  Square({required double side})
    : assert(side >= 0, 'side must be >= 0'), // mensaje de error
      _side = side;
  
  double get area{
    return _side * _side;
  }
  
  // control del valor que recibo
  set side(double value){
    print('setting new value $value');
    if(value < 0 ) throw 'Value most be >0';
    
    _side = value;
  }

  double calculateArea() {
    return _side * _side; // double es la clase de valor que devolvera este metodo
  }
}

// control de valores que recibe mi clase 