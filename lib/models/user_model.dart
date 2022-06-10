import 'package:shop/models/media_model.dart';
import 'package:shop/models/warehose_address_model.dart';

class User {
  User(
      {this.id,
      this.addressList,
      this.avatar,
      this.cardNumber,
      this.email,
      this.mediaList,
      this.phoneNumber,
      this.role,
      this.username,
      this.zipCode});

  String? username;
  String? avatar;
  String? role;
  String? id;
  String? email;
  List? addressList;
  String? cardNumber;
  String? phoneNumber;
  String? zipCode;
  List? mediaList;
}
