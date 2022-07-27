import 'package:flutter/material.dart';
import 'package:login_series_03/core/constants/app_txt.dart';

import '../widgets/app_widgets.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
        child: Column(children: [
          topImage('asset/images/register.png'),
          topTxt(AppText.signUp),
          customTextFields(AppText.firstName, Icons.person),
          const SizedBox(
            height: 10,
          ),
          customTextFields(AppText.lastName, Icons.person),
          const SizedBox(
            height: 10,
          ),
          customTextFields(AppText.email, Icons.email),
          const SizedBox(
            height: 10,
          ),
          customTextFields(AppText.password, Icons.lock),
          const SizedBox(
            height: 10,
          ),
          customTextFields(AppText.confirm, Icons.lock),
          const SizedBox(
            height: 10,
          ),

     
          customBtn(AppText.signUp),
          const SizedBox(height: 10,),
          
     
    
          bottomTxt(AppText.already, AppText.login,'/login')
        ]),
      )),
    );
  }

 }
