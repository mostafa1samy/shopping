import 'package:flutter/material.dart';

class AccountCheck extends StatelessWidget {

  final bool login;
  final VoidCallback press;

  const AccountCheck({Key key, @required this.login, @required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "لا امتلك حساب ؟" : "طبعا امتلك حساب ؟",
          style: TextStyle(fontSize: 16),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "تسجيل دخول" : "دخول",
            style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
