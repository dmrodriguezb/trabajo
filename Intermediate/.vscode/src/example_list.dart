main(List<String> args){
  List<int> _numberList = [500, 600, 900];
  _numberList[1]=700; //Cambia el valor de un index específico
  _numberList.add(1000);//Asigna un nuevo valor al final de la lista
  print("(1)$_numberList");//(1)Imprime toda la lista para veridicar cambios
  List<int> _fixedLenghtList = List <int>.filled(3, 0);//Genera una lista con 3 ceros
  print("(2)$_fixedLenghtList");//(2)verificamos los datos
  _fixedLenghtList[0] = 1; //Cambia el valor de un indice en especifico
  _fixedLenghtList[1] = 2;
  _fixedLenghtList[2] = 3;
  print("(3)$_fixedLenghtList");//(3)Imprime la lista nuevamente con los cambios
  print("(4)${_fixedLenghtList.length}");//(4)Imprime la longitud de la lista
  print("(5)${_fixedLenghtList.last}");//(5)Imprimimos el último elemento de la lista
  print("(6)${_fixedLenghtList.reversed}");//(6)Imprimimos la lista a la inversa
  print("(7)${_fixedLenghtList.isEmpty}");//(7)Imprimimos si la lista esta vacia o no
  print("(8)${_fixedLenghtList.isNotEmpty}");//(8)Lista no vacia (true en este caso)
  print("(9)${_numberList.removeLast()}");//(9)Borramos el ultimo elemto e imprimimos
  print("(10)$_numberList");//(10)Imprimimos la lista sin su ultimo elemento borrado
  print("(11)${_numberList.removeAt(1)}");//(11)Borramos el elemento con el indice 1
  print("(12)$_numberList");//(12)Imprimimos la lista ya  sin el elemento borrado
  print("(13)${_numberList.contains(1000)}");//(13)Imprimimos si la mista contiene el 1000

}
