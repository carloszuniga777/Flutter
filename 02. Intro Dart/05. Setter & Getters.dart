//Ejecutar: https://dartpad.dev/

void main() {

  final mySquare = Square( side: 10);
  
  mySquare.side = -5;
  
  print('area: ${mySquare.calculateArea()}');
  
}


class Square {
  double _side;  //Atributo privado _
  
  //contructor
  Square({required double side}) 
    : assert(side >= 0, 'side must be >= 0'),         //Asserciones para validar que una condicion se cumpla
      _side = side;
  
  
  double calculateArea(){
    return _side * _side;
  }
  
  //get
  double get area{
    return _side * _side;
  }
  
  
  //set
  set side( double value){
    
    //if( value < 0) throw 'Value must be >0';
    assert(value >= 0, 'side must be >= 0');        //Asserciones para validar que una condicion se cumpla
    
    _side = value;
  }
  
  
  
}