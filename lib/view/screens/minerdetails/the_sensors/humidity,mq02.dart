import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../modules/color.dart';

class HumidityMq02 extends StatelessWidget {
  const HumidityMq02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        percent: 0.3,
                        startAngle: 0,
                        backgroundColor: CustomColor.basic,
                        progressColor: CustomColor.mq09,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: CustomColor.basic2,
                              child: Text(
                                '21.50',
                                style: TextStyle(
                                  fontSize: 30,
                                  color: CustomColor.black,
                                ),
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
                              'MQ09 Gas',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w300,
                                color: CustomColor.basic,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 239,
                  decoration: BoxDecoration(
                      color: CustomColor.heart,
                      border: Border.all(width: 1,color: CustomColor.dangerouscolour),
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
                        percent: 0.1,
                        startAngle: 0,
                        backgroundColor: CustomColor.basic,
                        progressColor: CustomColor.humidty,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: CustomColor.basic2,
                              child: Text(
                                '21.00',
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
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
                            color: CustomColor.humidty,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'Humidity',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: CustomColor.basic),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
