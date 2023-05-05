import 'package:flutter/material.dart';

import '../../../modules/color.dart';
import '../../widgets/admin.dart';
import '../../widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //lod
          Center(
            child: Image.asset(
              'img/logo.png',
              height: 270,
              width: 268,
            ),
          ),
          const SizedBox(
            height: 60,
          ),
         const MyButton(
              text: 'Supervisor',
            ),

          const Admin(),
        ],
      ),
    );
  }
}
