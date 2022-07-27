import 'package:flutter/material.dart';
import 'package:login_series_03/core/constants/app_color.dart';
import 'package:login_series_03/core/constants/app_txt.dart';

import '../widgets/app_widgets.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
          topImage('asset/images/loginill.png'),
          topTxt(AppText.login),
          customTextFields(AppText.email, Icons.email),
          const SizedBox(
            height: 10,
          ),
          customTextFields(AppText.password, Icons.lock),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = true;
                  });
                },
                activeColor: Colors.white,
                activeTrackColor: AppColors.loginColor,
              ),
              const Text(AppText.rememberMe)
            ],
          ),
          const SizedBox(height: 10,),
          customBtn(AppText.login),
          const SizedBox(height: 10,),
          const Text(AppText.or),
          const Text(AppText.loginwith),
          const SizedBox(height: 10,),
          socialIcon(),
          bottomTxt(AppText.account, AppText.registernow,'/register')
        ]),
      )),
    );
  }

 }
