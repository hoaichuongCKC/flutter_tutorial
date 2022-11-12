import 'package:flutter/material.dart';
import 'package:flutter_tutorial/common/stateless/button.dart';
import 'package:flutter_tutorial/common/stateless/text.dart';
import 'package:flutter_tutorial/pages/login/components/form_password.dart';
import 'package:flutter_tutorial/pages/login/components/form_phone.dart';
import 'package:flutter_tutorial/theme/color.dart';
import 'package:flutter_tutorial/theme/icon.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child: MainIcon.instance.authentication,
                ),
                TextWidget(
                  text: 'Welcome Back!',
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                  color: MainColor.instance.darkColor,
                ),
                const SizedBox(height: 30.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormPhoneWidget(),
                    const SizedBox(height: 30.0),
                    FormPasswordWidget(),
                  ],
                ),
                const SizedBox(height: 15.0),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextWidget(
                    text: 'Forgot Password?',
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                    color: MainColor.instance.greyColor,
                  ),
                ),
                const SizedBox(height: 30.0),
                ButtonWidget(
                  widthButton: double.maxFinite,
                  heightButton: 50.0,
                  onClick: () {},
                  backgroundColor: MainColor.instance.blueColor,
                  child: TextWidget(
                    text: 'LOG IN',
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: MainColor.instance.lightColor,
                  ),
                ),
                const SizedBox(height: 30.0),
                TextWidget(
                  text: 'Or connect with social',
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                  color: MainColor.instance.greyColor,
                ),
                const SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ButtonWidget(
                      onClick: () {},
                      widthButton: 160,
                      backgroundColor: MainColor.instance.blueColor,
                      child: TextWidget(
                        text: 'Facebook',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: MainColor.instance.lightColor,
                      ),
                    ),
                    ButtonWidget(
                      onClick: () {},
                      widthButton: 160,
                      backgroundColor: MainColor.instance.redColor,
                      child: TextWidget(
                        text: 'Google',
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: MainColor.instance.lightColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
