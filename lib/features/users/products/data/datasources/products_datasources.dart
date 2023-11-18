import 'dart:convert';
import 'package:hive/hive.dart';
import 'package:shoping_app/assets/constants/constants.dart';
import 'package:shoping_app/features/users/products/data/models/all_products_model.dart';
import 'package:http/http.dart' as http;

class ProductsDataSources {
  String boxName = 'products';
  Future<List<AllProductsModel>> getproducts({required String sort}) async {
    var response = await http.get(
      Uri.parse('${AppConstants.baseUrl}products$sort'),
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
      return data.map<String>((e) => e.toString()).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<List<String>> getproductsByFilterSreach(String category) async {
    var response = await http.get(
      Uri.parse('${AppConstants.baseUrl}products/category/$category'),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body);
      return data.map<String>((e) => e.toString()).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<Box> openBox() async {
    Box box = await Hive.openBox<AllProductsModel>(boxName);
    return box;
  }

  List<AllProductsModel> getProductsList(Box box) {
    return box.values.toList() as List<AllProductsModel>;
  }

  Future<void> addProductTolist(Box box, AllProductsModel product) async {
    await box.put(product.id, product);
  }

  Future<void> removeProductFromlist(Box box, AllProductsModel product) async {
    await box.delete(product.id);
  }

  Future<void> clearlist(Box box) async {
    await box.clear();
  }
}
