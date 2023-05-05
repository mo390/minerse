import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../modules/color.dart';
import '../profile/profilehome.dart';
import 'column_miners.dart';

class MinersProfile extends StatelessWidget {
  const MinersProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
                  Stack(
                    children: [
                      SizedBox(
                          child: Image.asset(
                        'img/back.png',
                        fit: BoxFit.cover,
                      )),
                      const Padding(
                        padding: EdgeInsets.only(top: 100.0),
                        child: Center(
                          child: Text(
                            'Miners Profile',
                            style: TextStyle(
                                color: CustomColor.basic,
                                fontWeight: FontWeight.w600,
                                fontSize: 37),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 180.0),
                        child: Center(
                          child: Container(
                            width: 300,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: CustomColor.logo),
                              color: CustomColor.basic,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const CupertinoSearchTextField(
                              style: TextStyle(fontWeight: FontWeight.w400),
                              prefixInsets: EdgeInsetsDirectional.fromSTEB(13, 10, 0, 10),
                              prefixIcon: Icon(
                                Icons.search,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                suffixIcon: Icon(
                                  Icons.edit_off,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                suffixInsets: EdgeInsetsDirectional.fromSTEB(13, 10, 10, 10),
                              ),
                            ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                miners2(
                    backgroundColor:CustomColor.humidty,

                    image: Image.asset(
                    'img/3.jpg',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  text: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: 'Paulo\n',
                      style: TextStyle(color: CustomColor.heartbeat),
                    ),
                    TextSpan(
                      text: 'Some Messages Appears Here',
                      style: TextStyle(color: CustomColor.heartbeat),
                    ),
                  ])),
                   gestureDetector: GestureDetector(
                     onTap: (){
                       Navigator.pushReplacement(context,
                           MaterialPageRoute(builder: (context) => const Profile ()));
                     },

                   )
                ),
                miners2(
                  backgroundColor:CustomColor.humidty,

                  gestureDetector: GestureDetector(
    onTap: (){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => const Profile ()));
    },

    ),

                  image: Image.asset(
                  'img/2.webp',
                  width: double.infinity,
                  fit: BoxFit.cover,

                ),
                text: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: 'Rick Wright\n',
                    style: TextStyle(color: CustomColor.heartbeat),
                  ),
                  TextSpan(
                    text: 'Some Messages Appears Here',
                    style: TextStyle(color: CustomColor.heartbeat),
                                ),
                              ])),
                            ),
                            miners2(
                              backgroundColor:CustomColor.humidty,

                              gestureDetector: GestureDetector(
    onTap: (){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => const Profile ()));
    },

    ),

    image: Image.asset(
                                'img/4.jpg',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                              text: RichText(
                                  text: const TextSpan(children: [
                                TextSpan(
                                  text: 'Zeyad\n',
                                  style: TextStyle(color: CustomColor.heartbeat),
                                ),
                                TextSpan(
                                  text: 'Some Messages Appears Here',
                                  style: TextStyle(color: CustomColor.heartbeat),
                                ),
                              ])),
                            ),
                        miners2(
                          backgroundColor:CustomColor.logo,

                          gestureDetector: GestureDetector(
                            onTap: (){
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(builder: (context) => const Profile ()));
                            },

                          ),

                          image: Image.asset(
                            'img/960x0.jpg',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          text: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                      text: 'Yahia\n',
                      style: TextStyle(color: CustomColor.heartbeat),
                    ),
                TextSpan(
                  text: 'Some Messages Appears Here',
                  style: TextStyle(color: CustomColor.heartbeat),
                ),
              ])),
            ),
              miners2(
                backgroundColor:CustomColor.logo,

                gestureDetector: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Profile ()));
                  },

                ),

                image: Image.asset(
                  'img/img5.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                text: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Molotof\n',
                        style: TextStyle(color: CustomColor.heartbeat),
                      ),
                      TextSpan(
                        text: 'Some Messages Appears Here',
                        style: TextStyle(color: CustomColor.heartbeat),
                      ),
                    ])),
              ),
              miners2(
                    backgroundColor:CustomColor.logo,
                gestureDetector: GestureDetector(
                  onTap: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Profile ()));
                  },

                ),

                image: Image.asset(
                  'img/mienrs.jpeg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                text: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: 'Ibrahim\n',
                        style: TextStyle(color: CustomColor.logo),
                      ),
                      TextSpan(
                        text: 'Some Messages Appears Here',
                        style: TextStyle(color: CustomColor.heartbeat),
                      ),
                    ])),
              ),
          ])));
        }
}
