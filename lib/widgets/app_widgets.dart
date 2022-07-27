import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/constants/app_color.dart';

SizedBox bottomTxt(String BottomTxt, String BottomNavTxt, String BottomNavTo) {
  return SizedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(BottomTxt),
        TextButton(
            onPressed: () {
              Get.toNamed(BottomNavTo);
            },
            child: Text(
              BottomNavTxt,
              style: const TextStyle(color: AppColors.loginColor),
            ))
      ],
    ),
  );
}

SizedBox socialIcon() {
  return SizedBox(
    width: 300,
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      IconButton(
          onPressed: () {}, icon: Image.asset('asset/images/google.png')),
      IconButton(onPressed: () {}, icon: Image.asset('asset/images/apple.png')),
      IconButton(onPressed: () {}, icon: Image.asset('asset/images/face.png')),
    ]),
  );
}

SizedBox customBtn(String btnTxt) {
  return SizedBox(
    width: 250,
    height: 50,
    child: ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.loginColor),
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
      child: Text(btnTxt),
    ),
  );
}

Container customTextFields(String hintTxt, IconData prefixIcon) {
  return Container(
    width: 250,
    height: 50,
    decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
              color: Colors.white, offset: Offset(0.0, 1.0), blurRadius: 6.0)
        ],
        border: Border.all(color: Colors.black12),
        borderRadius: const BorderRadius.all((Radius.circular(15.0)))),
    child: Center(
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(
              prefixIcon,
              color: AppColors.loginColor,
            ),
            hintText: hintTxt,
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10.0))),
      ),
    ),
  );
}

SizedBox topTxt(String topTxt) {
  return SizedBox(
    child: Text(
      topTxt.toUpperCase(),
      style: const TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
          color: AppColors.loginColor),
    ),
  );
}

SizedBox topImage(String img) {
  return SizedBox(child: Image.asset(img));
}
