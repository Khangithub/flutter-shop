// ignore_for_file: depend_on_referenced_packages, use_build_context_synchronously, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:shop/widgets/go_back_top_left_btn.dart';
import 'package:shop/widgets/image_btn.dart';
import 'package:shop/widgets/underline_pwd_input.dart';
import 'package:shop/const/customed_colors.dart';
import 'package:shop/const/customed_size.dart';
import 'package:shop/const/customed_style.dart';
import 'package:shop/services/user_controller.dart';
import 'package:get/get.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final UserController userCtrl = Get.put(UserController());
  final emailTxtCtrl = TextEditingController();
  final pwdTxtCtrl = TextEditingController();
  String email = '';
  String password = '';
  String confirmedPassword = '';

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
          child: Stack(
        children: <Widget>[
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/signup.png',
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Sign up',
                  style: CustomedStyle.kheading,
                ),
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
                UnderlinedPwdInput(
                  icon: const Icon(
                    Icons.key,
                  ),
                  placeholder: 'Confirm your password',
                  onChanged: (text) {
                    setState(() {
                      confirmedPassword = text;
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const ImageBtn(
                    imageUrl: 'assets/images/google.png',
                    text: 'Continue with Google'),
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
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text(
                    'Already have a Shopeeholic account? Login',
                    style: TextStyle(
                        color: CustomedColors.kgrey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ]),
          const GoBackTopLeftBtn()
        ],
      )),
    );
  }
}
