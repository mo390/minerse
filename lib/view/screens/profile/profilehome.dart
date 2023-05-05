import 'package:flutter/material.dart';

import '../../../modules/color.dart';
import '../minersprofile/minersprofile.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            SizedBox(child: Image.asset('img/back.png')),
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MinersProfile()),
                            );
                          },
                          child: ClipRRect(
                            child: Image.asset(
                              'img/iconback.png',
                              height: 20,
                              width: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10.0,
                            bottom: 10,
                            left: 130,
                          ),
                          child: (Text(
                            'Profile',
                            style: (TextStyle(
                              color: CustomColor.basic,
                              fontSize: 21,
                            )),
                          )),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: CustomColor.basic,
                      radius: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'img/3.jpg',
                          height: 100,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    (const Text(
                      'Paulo',
                      style: (TextStyle(
                        color: CustomColor.basic,
                        fontSize: 18,
                      )),
                    )),
                    const SizedBox(height: 5),
                    (const Text(
                      'Paulo90@gmail.com',
                      style: (TextStyle(
                        color: CustomColor.gry,
                        fontSize: 16,
                      )),
                    )),
                  ]),
            ),
          ]),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 54.35,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColor.border,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Icon(
                      Icons.person_outline,
                      color: CustomColor.basic,
                    ),
                  ),
                ),
                Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: CustomColor.border,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Mohamed Mohamed Ahmed ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.border,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 54.35,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColor.border,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Image.asset(
                      'img/id.png',
                      color: CustomColor.basic,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: CustomColor.border,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        '1965865566655255 ',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.border,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 54.35,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColor.border,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Icon(
                      Icons.calendar_month,
                      color: CustomColor.basic,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: CustomColor.border,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        '10/10/19070',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.border,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 54.35,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColor.border,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Icon(
                      Icons.phone_enabled_outlined,
                      color: CustomColor.basic,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: CustomColor.border,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        '+20 015255666',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.border,
                        ),
                      ),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 54.35,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColor.border,
                      borderRadius: BorderRadius.circular(15)),
                  child: const Center(
                    child: Icon(
                      Icons.location_on_outlined,
                      color: CustomColor.basic,
                      size: 20,
                    ),
                  ),
                ),
                Container(
                    width: 280,
                    height: 55,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: CustomColor.border,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Text(
                        'Results near Cairo, Cairo',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.border,
                        ),
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
