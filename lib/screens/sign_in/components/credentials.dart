import 'package:app/next/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app/constants/constants.dart';
import 'package:app/screens/widgets/rectangular_button.dart';
import 'package:app/screens/widgets/rectangular_input_field.dart';

class Credentials extends StatelessWidget {
  const Credentials({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(appPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RectangularInputField(
            hintText: 'الايميل',
            icon: Icons.email_rounded,
            obscureText: false,
          ),
          SizedBox(
            height: appPadding / 2,
          ),
          RectangularInputField(
            hintText: 'كلمة السر',
            icon: Icons.lock,
            obscureText: true,
          ),
          SizedBox(
            height: appPadding / 2,
          ),
          Center(
            child: Text(
              'نسيت كلمة السر ؟',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
          ),
          RectangularButton(text: 'دخول', press: (){
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>HomeScreen()));
          })
        ],
      ),
    );
  }
}
