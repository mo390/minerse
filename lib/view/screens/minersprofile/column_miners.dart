import 'package:flutter/material.dart';

import '../../../modules/color.dart';

Widget miners2({
  required Image image,
  required RichText text,
  required Color backgroundColor ,
  required  GestureDetector gestureDetector ,

}) =>
    Stack(
      children: [
        Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              right: 20,
              left: 17,
            ),

            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Container(
                width: 320,
                height: 55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: CustomColor.gray),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 46,
                    ),
                    Column(
                      children: [
                        Padding(
                            padding:  const EdgeInsets.only(top: 8.0),
                            child:text
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 35,
                    ),
                    CircleAvatar(
                        radius: 15,
                        backgroundColor: backgroundColor,
                        child: const Icon(
                          Icons.person_outline,
                          size: 20,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            )),
        Stack(
          children: [
           GestureDetector(
              onTap: (){
                gestureDetector;
              },
              child: CircleAvatar(
                backgroundColor: CustomColor.basic,
                radius: 25,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(30), child: image),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 36.0, left: 32),
              child: CircleAvatar(
                radius: 7,
                backgroundColor: Colors.green,
              ),
            ),
          ],
        ),

        // TODO:هشوف لها باكيدج لسه
        // GestureDetector(
        //   onTap: () {
        //     _updatestate();
        //   },
        //   child: AnimatedContainer(
        //     width: _width,
        //     height: _height,
        //     duration: const Duration(seconds: 2),
        //     curve: Curves.fastOutSlowIn,
        //     child: const CircleAvatar(
        //
        //       backgroundColor: CustomColor.dangerouscolour,
        //     ),
        //
        //   ),
        // ),
      ],);