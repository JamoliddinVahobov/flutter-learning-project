class Product {
  final String id;
  final String name;
  final String info;
  final String price;
  final String quantity;
  final String unit;
  final String expirationDate;
  final String imageUrl;
  final String categoryId;

  Product({
    required this.id,
    required this.name,
    required this.info,
    required this.price,
    required this.quantity,
    required this.unit,
    required this.expirationDate,
    required this.imageUrl,
    required this.categoryId,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['mahsulotid'],
      name: json['mahsulotnomi'],
      info: json['info'],
      price: json['narxi'],
      quantity: json['miqdori'],
      unit: json['ulchovturi'],
      expirationDate: json['exdate'],
      imageUrl: json['mahsulotrasmi'],
      categoryId: json['turid'],
    );
  }
}
