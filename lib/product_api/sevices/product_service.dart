import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kingofcomfort/product_api/models/product_model.dart';

class ProductService {
  final String apiUrl = 'https://dash.vips.uz/api/18/167/4460';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      List<dynamic> productList = jsonDecode(response.body);
      return productList.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
