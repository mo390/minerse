import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../modules/color.dart';

class  OxygeninBloodHeartbeat extends StatelessWidget {
  const  OxygeninBloodHeartbeat({Key? key}) : super(key: key);

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
                        percent: 0.7,
                        startAngle: 180,
                        backgroundColor: CustomColor.basic,
                        progressColor: CustomColor.air,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: CustomColor.basic2,
                              child: Text(
                                '30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 23, color: Colors.black),
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
                              'Air Temperature',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  color: CustomColor.basic),
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
                        percent: 0.95,
                        startAngle: 100,
                        backgroundColor: CustomColor.basic,
                        progressColor: CustomColor.oxygeninBlood,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: CustomColor.basic2,
                              child: Text(
                                '98%',
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
                          decoration: BoxDecoration( color:CustomColor.logo,

                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Center(
                            child: Text(
                              'SpO2',
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