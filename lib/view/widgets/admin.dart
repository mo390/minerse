import 'package:flutter/material.dart';

import '../../modules/color.dart';
import '../screens/admin_screen/welcome_admin.dart';

class Admin extends StatelessWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        height: 50,
        width: 355,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            color: CustomColor.logo,
          ),
          borderRadius: BorderRadius.circular(80),
        ),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)),
              backgroundColor: CustomColor.basic,
              textStyle: const TextStyle(
                color: CustomColor.black,
                fontFamily: 'PlayfairDisplay',
              ),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WelcomeAdmin()));
            },
            child: const Center(
              child: Text('Admin',
                  style: TextStyle(
                      color: CustomColor.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.start),
            )),
      ),
    );
  }
}
