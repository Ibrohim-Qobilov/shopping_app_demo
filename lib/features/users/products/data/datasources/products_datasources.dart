import 'dart:convert';

import 'package:shoping_app/assets/constants/constants.dart';
import 'package:shoping_app/features/users/products/data/models/all_products_model.dart';
import 'package:http/http.dart' as http;

class ProductsDataSources {
  Future<List<AllProductsModel>> getproducts() async {
    var response = await http.get(
      Uri.parse('${AppConstants.baseUrl}products'),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return (jsonDecode(response.body) as List)
          .map((e) => AllProductsModel.fromJson(e))
          .toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<List<String>> getproductsByFilter() async {
    var response = await http.get(
      Uri.parse('${AppConstants.baseUrl}products/categories'),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      print(data);
      return data.map<String>((e) => e.toString()).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
