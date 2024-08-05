void main(){
  emitNumbers().listen((value){
      print('Stream value: $value');
  });
}

Stream<int> emitNumbers(){

  return Stream.periodic(const Duration(seconds: 1), (value){
    //print('Desde peridic $value');
    return value;
  }).take(5);   //Toma solo 5 emisiones

}