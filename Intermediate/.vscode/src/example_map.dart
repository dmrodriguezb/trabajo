main(List<String> args) {
  //Declaramos un mapa con claves: valores de distinto tipo cada uno.
  var mapData = {100: "Guanajuato", "Roads": 200};
  //Declaramos un mapa con el método constructor pordemos usar clave-valor distintos.
  Map mapObj = Map();
  mapObj[300] ="White Horse";
  mapObj["The King"] = 400;
  //Declaraos un constructor pero fijamos los tipos que se tiene que 
  //respetar al definir elementos
  Map fixedDataTypeMap = Map<int, String>();
  fixedDataTypeMap[500]="Four ways";
  //Causará error ya que fijaste que las claves seran númericas y los valores cademas
  //fixedDataTypeMap["Dear Dove"] =600;
  fixedDataTypeMap[600] ="Dear Dove";
  print(mapData["Roads"]);
}