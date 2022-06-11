// ignore_for_file: avoid_print, unused_element, depend_on_referenced_packages, use_build_context_synchronously, sort_child_properties_last, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shop/widgets/go_back_top_left_btn.dart';
import 'package:shop/widgets/image_btn.dart';
import 'package:shop/widgets/loading_dialog.dart';
import 'package:shop/widgets/underline_pwd_input.dart';
import 'package:shop/widgets/underlined_input.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:get/get.dart';
import 'package:shop/const/customed_size.dart';
import 'package:shop/const/customed_style.dart';
import 'package:shop/models/user_model.dart';
import 'package:shop/services/user_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final UserController userCtrl = Get.put(UserController());
  final emailTxtCtrl = TextEditingController();
  final pwdTxtCtrl = TextEditingController();
  String email = '';
  String password = '';

  @override
  void dispose() {
    emailTxtCtrl.dispose();
    pwdTxtCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(color: CustomedColors.kwhite),
              child: Stack(
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/images/login.png',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Login',
                          style: CustomedStyle.kheading,
                        ),
                        UnderlinedInput(
                            icon: const Icon(Icons.mail),
                            placeholder: 'Enter your email',
                            txtCtrl: emailTxtCtrl,
                            onChanged: (text) {
                              setState(() {
                                email = text;
                              });
                            }),
                        UnderlinedPwdInput(
                          icon: const Icon(
                            Icons.key,
                          ),
                          placeholder: 'Enter your password',
                          onChanged: (text) {
                            setState(() {
                              password = text;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: CustomedStyle.kgoldBtn,
                          onPressed: () async {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const LoadingDialog();
                                });

                            User currentUser =
                                await userCtrl.lgPwd(email, password);

                            if (currentUser.username != "") {
                              Navigator.pop(context);
                              Navigator.pop(context);
                            }
                          },
                        ),
                        const SizedBox(
                          height: 30,
                          child: Text(
                            'or',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        const ImageBtn(
                            imageUrl: 'assets/images/google.png',
                            text: 'Continue with Google'),
                        const SizedBox(
                          height: 10,
                        ),
                        const ImageBtn(
                            imageUrl: 'assets/images/qr.png',
                            text: 'Continue with QRCode'),
                        const SizedBox(
                          height: 10,
                        ),
                        const ImageBtn(
                            imageUrl: 'assets/images/faceId.png',
                            text: 'Continue with FaceID'),
                        const SizedBox(
                          height: 60,
                        ),
                        Container(
                          width: CustomedSize.kwidth,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                  fontSize: 16, color: CustomedColors.kgrey600),
                              children: const <TextSpan>[
                                TextSpan(
                                  text:
                                      'By continuing with Shopeeholic, you agreed with ',
                                ),
                                TextSpan(
                                    text: 'Terms of Service, Privacy Policy',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signup');
                          },
                          child: Text(
                            'Not on Shopeeholic yet? Sign up',
                            style: TextStyle(
                                color: CustomedColors.kgrey,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ]),
                  const GoBackTopLeftBtn()
                ],
              ))),
    );
  }
}
