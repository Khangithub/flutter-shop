// ignore_for_file: depend_on_referenced_packages, avoid_print
import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shop/models/user_model.dart';

class UserController extends GetxController {
  User currentUser = User(
      id: '',
      cardNumber: '',
      avatar: '',
      addressList: [],
      email: '',
      mediaList: [],
      phoneNumber: '',
      role: '',
      username: '',
      zipCode: '');

  lgPwd(email, password) async {
    var url =
        Uri.parse('https://shopeeholic-server.herokuapp.com/users/login/pwd');
    var response =
        await http.post(url, body: {'email': email, 'password': password});

    if (response.statusCode == 200) {
      var userData = jsonDecode(response.body);
      setCurrentUser(userData['currentUser']);
      return getCurrentUser();
    }
  }

  void setCurrentUser(data) {
    currentUser = User(
        id: data['_id'],
        addressList: data['addressList'],
        avatar: data['avatar'],
        cardNumber: data['cardNumber'],
        email: data['email'],
        mediaList: data['mediaList'],
        phoneNumber: data['phoneNumber'],
        role: data['role'],
        username: data['username'],
        zipCode: data['zipCode']);
  }

  User getCurrentUser() {
    return currentUser;
  }
}
