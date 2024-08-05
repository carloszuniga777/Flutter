void main(){

  emitNumber().listen((value){
    print('Stream value: $value');
  });
}

//Async* transforma el retorno en stream, y en lugar de return, se usa yield para emitir un valor del Stream
Stream emitNumber() async*{
  final valuesToEmit = [1,2,3,4,5];

  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    yield i;  //Casi como return
  }
}