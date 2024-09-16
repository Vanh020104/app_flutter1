class Product {
  final int productId;
  final String name;
  final String description;
  final double price;
  final String manufacturer;
  final String size;
  final String weight;
  final int stockQuantity;
  final String createdAt;
  final String updatedAt;
  final List<String> images;

  Product({
    required this.productId,
    required this.name,
    required this.description,
    required this.price,
    required this.manufacturer,
    required this.size,
    required this.weight,
    required this.stockQuantity,
    required this.createdAt,
    required this.updatedAt,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      productId: json['productId'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      manufacturer: json['manufacturer'],
      size: json['size'],
      weight: json['weight'],
      stockQuantity: json['stockQuantity'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      images: List<String>.from(json['images'].map((image) => image['imageUrl'])),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'productId': productId,
      'name': name,
      'description': description,
      'price': price,
      'manufacturer': manufacturer,
      'size': size,
      'weight': weight,
      'stockQuantity': stockQuantity,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'images': images.map((image) => {'imageUrl': image}).toList(),
    };
  }
}