// ignore_for_file: depend_on_referenced_packages, avoid_print
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UserController extends GetxController {
  void lgPwd(username, password) async {
    var url =
        Uri.parse('https://shopeeholic-server.herokuapp.com/users/login/pwd');
    var response = await http
        .post(url, body: {'username': username, 'password': password});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
  }
}
