// ignore: camel_case_types
enum env {
  prod,
  dev,
}

class AppConstants {
  static const uri = env.dev;

  static const nameApp = "Shopping";

  static String get baseUrl {
    if (uri == env.dev) {
      return "https://fakestoreapi.com/";
    } else {
      return "https://fakestoreapi.com/";
    }
  }
}
