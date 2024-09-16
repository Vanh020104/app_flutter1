// lib/services/product_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learn_flutter/models/Product.dart';



class ProductService {
  final String baseUrl = 'http://10.0.2.2:8082/api/v1/products/getAll?page=1&limit=10';  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));
    if (response.statusCode == 200) {
      final data = json.decode(response.body)['data']['content'];
      return data.map<Product>((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}