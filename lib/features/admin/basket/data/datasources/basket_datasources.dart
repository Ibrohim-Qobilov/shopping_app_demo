import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shoping_app/assets/constants/constants.dart';
import 'package:shoping_app/features/admin/basket/data/models/user_model.dart';

class BarketDataSources {
  Future<List<UserListModel>> getUsers() async {
    var response = await http.get(
      Uri.parse('${AppConstants.baseUrl}users'),
    );
    if (response.statusCode == 200 || response.statusCode == 201) {
      return (jsonDecode(response.body) as List)
          .map((e) => UserListModel.fromJson(e))
          .toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
