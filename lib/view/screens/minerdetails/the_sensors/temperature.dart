import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../../modules/color.dart';

class Temperature extends StatelessWidget {
  const Temperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                width: 170,
                height: 239,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: CustomColor.logo),
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
                      startAngle: 260,
                      backgroundColor: CustomColor.basic,
                      progressColor: CustomColor.temperature,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: CustomColor.basic2,
                            child: Text(
                              '24',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.black),
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
                            'Minertempreture',
                            style: TextStyle(
                                fontSize: 11,
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
                    border: Border.all(width: 1, color: CustomColor.logo),
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
                      percent: 0.7,
                      startAngle: 180,
                      backgroundColor: CustomColor.basic,
                      progressColor: CustomColor.heartbeat,
                      center: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            radius: 50,
                            backgroundColor: CustomColor.basic2,
                            child: Text(
                              '120/80',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 23,
                                  color: Colors.black),
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
                            'Heart Rate',
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
    );
  }
}
