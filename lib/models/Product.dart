class Product {
  final int productId;
  final String name;
  final String description;
  final double price;
  final String manufacturer;
  final int stockQuantity;
  final String size;
  final String weight;
  final String createdAt;
  final String updatedAt;
  final Category category;

  Product({
    required this.productId,
    required this.name,
    required this.description,
    required this.price,
    required this.manufacturer,
    required this.stockQuantity,
    required this.size,
    required this.weight,
    required this.createdAt,
    required this.updatedAt,
    required this.category,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      manufacturer: json['manufacturer'],
      stockQuantity: json['stockQuantity'],
      size: json['size'],
      weight: json['weight'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      category: Category.fromJson(json['category']),
    );
  }
}

class Category {
  final int categoryId;
  final String categoryName;

  Category({required this.categoryId, required this.categoryName});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      categoryId: json['categoryId'],
      categoryName: json['categoryName'],
    );
  }
}
