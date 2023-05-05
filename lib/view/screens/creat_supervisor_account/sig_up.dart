import 'package:flutter/material.dart';
import 'package:miners/view/screens/slpashscreen/splashscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../widgets/custom_text_form_filed.dart';

class CreatAccount extends StatefulWidget {
  const CreatAccount({Key? key}) : super(key: key);

  @override
  State<CreatAccount> createState() => _CreatAccountState();
}

class _CreatAccountState extends State<CreatAccount> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 50
              ,),
            TextForm(
                controller: emailController,
                valid: (value) =>
                    value!.isEmpty ? "Please Enter Your Email" : null,
                type: TextInputType.emailAddress,
                labelText: 'Email',
                imagePath: 'img/email.png'),
            SizedBox(
              height: 50,
            ),
            TextForm(
                controller: passController,
                onPress: () {
                  return;
                },
                type: TextInputType.visiblePassword,
                labelText: 'Password',
                imagePath: 'img/lock.png',
                valid: (String? value) {
                  if (value!.isEmpty) {
                    return "You Must Enter Password";
                  } else {
                    return null;
                  }
                }),
            ElevatedButton(
                onPressed: () async {
                  {
                    try {
                      await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: emailController.text.trim(),
                        password: passController.text.trim(),
                      );
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SplashScreen()));
                    } on FirebaseAuthException catch (e) {
                      final snackbar = SnackBar(
                        content: Text(
                          e.message.toString(),
                          style: TextStyle(color: Colors.orange),
                        ),
                        backgroundColor: Colors.white,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  }
                },
                child: Text('Sign in'))
          ],
        ),
      ),
    );
  }
}
