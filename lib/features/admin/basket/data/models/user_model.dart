import 'dart:convert';

List<UserListModel> userListModelFromJson(String str) =>
    List<UserListModel>.from(
        json.decode(str).map((x) => UserListModel.fromJson(x)));

String userListModelToJson(List<UserListModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserListModel {
  final Address address;
  final int id;
  final String email;
  final String username;
  final String password;
  final Name name;
  final String phone;
  final int v;

  UserListModel({
    required this.address,
    required this.id,
    required this.email,
    required this.username,
    required this.password,
    required this.name,
    required this.phone,
    required this.v,
  });

  factory UserListModel.fromJson(Map<String, dynamic> json) => UserListModel(
        address: Address.fromJson(json["address"]),
        id: json["id"],
        email: json["email"],
        username: json["username"],
        password: json["password"],
        name: Name.fromJson(json["name"]),
        phone: json["phone"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "address": address.toJson(),
        "id": id,
        "email": email,
        "username": username,
        "password": password,
        "name": name.toJson(),
        "phone": phone,
        "__v": v,
      };
}

class Address {
  final Geolocation geolocation;
  final String city;
  final String street;
  final int number;
  final String zipcode;

  Address({
    required this.geolocation,
    required this.city,
    required this.street,
    required this.number,
    required this.zipcode,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        geolocation: Geolocation.fromJson(json["geolocation"]),
        city: json["city"],
        street: json["street"],
        number: json["number"],
        zipcode: json["zipcode"],
      );

  Map<String, dynamic> toJson() => {
        "geolocation": geolocation.toJson(),
        "city": city,
        "street": street,
        "number": number,
        "zipcode": zipcode,
      };
}

class Geolocation {
  final String lat;
  final String long;

  Geolocation({
    required this.lat,
    required this.long,
  });

  factory Geolocation.fromJson(Map<String, dynamic> json) => Geolocation(
        lat: json["lat"],
        long: json["long"],
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "long": long,
      };
}

class Name {
  final String firstname;
  final String lastname;

  Name({
    required this.firstname,
    required this.lastname,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        firstname: json["firstname"],
        lastname: json["lastname"],
      );

  Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "lastname": lastname,
      };
}
