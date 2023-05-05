import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../modules/color.dart';

class Mq507 extends StatelessWidget {
  const Mq507({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column (
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 239,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: CustomColor. logo),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      CircularPercentIndicator(
                        radius: 60,
                        lineWidth: 30,
                        percent: 0.8,
                        startAngle: 160,
                        backgroundColor: CustomColor.basic,
                        progressColor: CustomColor.mq07,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: CustomColor.basic2,
                              child: Text(
                                '777',
                                style: TextStyle(fontSize: 30, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: CustomColor.logo,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'MQ05 Gas',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color:CustomColor.basic,),
                            ),
                          )),

                    ],
                  ),
                ),
              ],
            ),
            //Mq07
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 239,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: CustomColor. logo),                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      CircularPercentIndicator(
                        radius: 60,
                        lineWidth: 30,
                        percent: 0.9,
                        startAngle: 150,
                        backgroundColor: CustomColor.basic,
                        progressColor: CustomColor.mq09,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: CustomColor.basic2,
                              child: Text(
                                '897',
                                style: TextStyle(fontSize: 30,color:CustomColor.black,),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: CustomColor.logo,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'MQ07 Gas',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color:CustomColor.basic,),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10,),

      ],
    );
  }
}
