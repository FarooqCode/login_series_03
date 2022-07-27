import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_series_03/views/login_views.dart';
import 'package:login_series_03/views/register_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(name: '/login', page: ()=>const LoginView()),
        GetPage(name: '/register', page: ()=>const RegisterView()),
      ],
      initialRoute: '/login',
    );
  }
}