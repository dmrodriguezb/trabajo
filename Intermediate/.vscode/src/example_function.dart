main(List<String> args) {
  //Declaramos una funcion dentro de main
  String getProductDescription(String name, {price}){
    return "$name - $price";
  }
  print(getProductDescription("Tenis Chabelo",price :540));
}