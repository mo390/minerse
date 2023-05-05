import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../../modules/color.dart';
import '../../widgets/custom_text_form_filed.dart';
import '../minersprofile/minersprofile.dart';

class SignInSupervisorScreen extends StatefulWidget {
  const SignInSupervisorScreen({Key? key}) : super(key: key);

  @override
  State<SignInSupervisorScreen> createState() => _SignInSupervisorScreenState();
}

class _SignInSupervisorScreenState extends State<SignInSupervisorScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  var  passController = TextEditingController();
  var emailController = TextEditingController();
  bool isPass = true;

  IconData eye = Icons.visibility_outlined;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Center(
                      child: Image.asset(
                        'img/logo2.png',
                        height: 100,
                        width: 268,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 30),
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                        text: 'Welcome ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 33,
                            color: CustomColor.black),
                      ),
                      TextSpan(
                        text: 'Supervisor ',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 33,
                            color: CustomColor.logo),
                      ),
                    ])),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextForm(
                      controller: emailController,
                      // valid: (String? value) =>
                      //     value!.isEmpty ? "Please Enter Your Email" : null,
                      type: TextInputType.emailAddress,
                      labelText: 'Email',
                      imagePath: 'img/email.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  TextForm(
                    controller: passController,
                    onPress: () {
                      return changeIconPassword();
                    },
                    type: TextInputType.visiblePassword,
                    labelText: 'Password',
                    imagePath: 'img/lock.png',
                    isPassword: isPass,
                    suffix: eye,
                    // valid: (String? value) {
                    //   if (value!.isEmpty) {
                    //     return "You Must Enter Password";
                    //   } else {}
                    //   return null;
                    // }
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Forget Your Password ?',
                              style: TextStyle(
                                  fontFamily: 'PlayfairDisplay',
                                  fontWeight: FontWeight.w500,
                                  color: CustomColor.logo),
                            ),
                          )),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Padding(
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
                            backgroundColor: CustomColor.logo,
                            // ignore: prefer_const_constructors
                            textStyle: TextStyle(
                              color: CustomColor.black,
                              fontFamily: 'PlayfairDisplay',
                            ),
                          ),
                          onPressed: () async {
                            // if (formKey.currentState!.validate())
                            {
                             // formKey.currentState?.save();
                              //print("the email:${emailController.toString()}");
                              // await sigIn_with_firebase(
                              //     email:emailController.text,
                              //     pass: passController.text);
                            }
                          },

                          child: const Center(
                            child: Text('Sign in',
                                style: TextStyle(
                                    color: CustomColor.basic,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.start),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future sigIn_with_firebase({required String email, required String pass}) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: email.trim(), password: pass.trim())
          .then(
            (value) => Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const MinersProfile()),
              (route) => false,
            ),
          );
    } on FirebaseAuthException catch (e) {
      final snackBar = SnackBar(
        content: Text(
          e.message.toString(),
          style: const TextStyle(color: Colors.red),
        ),
        backgroundColor: Colors.white,
        behavior: SnackBarBehavior.floating,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  void changeIconPassword() {
    setState(() {
      isPass = !isPass;
      eye = isPass
          ? eye = Icons.visibility_off_outlined
          : Icons.visibility_outlined;
    });
  }
}
