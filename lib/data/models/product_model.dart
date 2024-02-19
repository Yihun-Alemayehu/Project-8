class Product {
  final int id;
  final String name;
  final double price;
  final int quantity;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 1,
  });
}
