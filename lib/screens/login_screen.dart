import 'package:flutter/material.dart';
import 'package:shop/components/image_btn.dart';
import 'package:shop/components/underline_pwd_input.dart';
import 'package:shop/components/underlined_input.dart';
import 'package:shop/const/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/welcome.png',
                ),
                const SizedBox(
                  height: 40,
                ),
                const UnderlinedInput(
                  icon: Icon(Icons.mail),
                  placeholder: 'Enter your email',
                  isPwd: false,
                ),
                const UnderlinedPwdInput(
                  icon: Icon(
                    Icons.key,
                  ),
                  placeholder: 'Enter your password',
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom(
                      primary: CustomedColors.$black, //Text Color
                      backgroundColor: CustomedColors.$gold,
                      minimumSize: const Size(350, 40)),
                  onPressed: () {},
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
                    text: 'Continue with QR Code'),
                const SizedBox(
                  height: 10,
                ),
                const ImageBtn(
                    imageUrl: 'assets/images/faceId.png',
                    text: 'Continue with FaceID'),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 350,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 16, color: CustomedColors.$lightGrey),
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
                  height: 30,
                ),
                const TextButton(
                  onPressed: null,
                  child: Text(
                    'Not on Shopeeholic yet? Sign up',
                    style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                )
              ]))),
    );
  }
}
