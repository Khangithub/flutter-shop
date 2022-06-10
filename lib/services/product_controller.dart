// ignore_for_file: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
   @override
  void onInit() {
    getProductsApi();
    super.onInit();
  }

   void getProductsApi() async {
    final response = await http.get(Uri.parse(
        'https://shopeeholic-server.herokuapp.com/products/5e4ac9b59fb2690714b40bf9'));
    // ignore: avoid_print
    print("data -> ${response.body.toString()}");
  }
}
