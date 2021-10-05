import 'package:flutter/material.dart';
import 'package:app/constants/constants.dart';
import 'package:app/screens/sign_up/sigup_screen.dart';
import 'package:app/screens/widgets/account_check.dart';
import 'package:app/screens/widgets/rounded_button.dart';

class Social extends StatelessWidget {
  const Social({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'أو',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: appPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RoundedButton(imageSrc: 'assets/images/google.png', press: () {}),
              RoundedButton(
                  imageSrc: 'assets/images/facebook.png', press: () {}),
              RoundedButton(
                  imageSrc: 'assets/images/twitter.png', press: () {}),
            ],
          ),
        ),
        SizedBox(
          height: appPadding,
        ),
        AccountCheck(
          login: true,
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return SignUpScreen();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}