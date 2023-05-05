import 'package:flutter/material.dart';

import '../../modules/color.dart';
import '../screens/supervisor_signin/supervisor_signin.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;

  final Function()? function;

  const MyButton(
      {Key? key,
      required this.text,
      this.color = CustomColor.logo,
      this.textColor = CustomColor.basic,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 50,
            width: 355,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(80),
            ),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const SignInSupervisorScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.logo,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80)),
                  textStyle: TextStyle(
                    color: textColor,
                    fontFamily: 'PlayfairDisplay',
                  ),
                ),
                child: Center(
                  child: Text(text,
                      style: TextStyle(
                          color: textColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start),
                )),
          ),
        ),
      ],
    );
  }
}
