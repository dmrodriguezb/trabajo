main(List<String> args) {
  //Declaramos la instancia de producto
  var product = Product("Cupcake", 5.5, 500);
  //asignamos los valores e imprimimso el resultado de un metodo
 print(
   "Producto:${product.name} Precio:${product.price} "+ 
   "Existencia:${product.stock} Precio Total:${product.totalPrice()}");
}
//Definimos la clase de producto
class Product{
//Variables miembro
final String name;
final double price;
final int stock;
//Metodo Constructor
Product(this.name,this.price,this.stock);
//Metodos...
String getName(){
  return name;
}
//Metodo que calcula el precio total del producto
double totalPrice(){
  return price * stock;
}
}