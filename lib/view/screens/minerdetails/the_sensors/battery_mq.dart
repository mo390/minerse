import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../modules/color.dart';

class BatteryMq2 extends StatelessWidget {
  const BatteryMq2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column (
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //battery
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 170,
                height: 239,
                decoration: BoxDecoration(
border: Border.all(width: 1,color: CustomColor.logo),
                    borderRadius: BorderRadius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'img/Battery.png',
                      width: 35,
                      height: 17,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CircularPercentIndicator(
                      radius: 60,
                      lineWidth: 30,
                      percent: 0.9,
                      startAngle: 90,
                      backgroundColor: CustomColor.basic,
                      progressColor: CustomColor.green,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: CustomColor.basic2,
                            child: Text(
                              '90%',
                              style: TextStyle(fontSize: 30, color: CustomColor.black),
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
                       color: CustomColor.green,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Text(
                            'Battery',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: CustomColor.basic),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
            //Mq2
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 239,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1,color: CustomColor.logo),
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
                        percent: 0.6,
                        startAngle: 200,
                        backgroundColor: CustomColor.basic,
                        progressColor: CustomColor.mq2,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: CustomColor.basic2,
                              child: Text(
                                '491',
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
                              'MQ2 Sensor',
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
