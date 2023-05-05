import 'package:flutter/material.dart';
import 'package:miners/view/screens/minerdetails/the_sensors/mq05_mq07.dart';
import 'package:miners/view/screens/minerdetails/the_sensors/temperature.dart';

import '../../../modules/color.dart';
import '../minersprofile/minersprofile.dart';
import '../profile/profilehome.dart';
import 'the_sensors/battery_mq.dart';
import 'the_sensors/humidity,mq02.dart';
import 'the_sensors/oxygeninBlood_heartbeat.dart';

class MinerDetails extends StatelessWidget {
  const MinerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(

          children: [
      Stack(children: [
        SizedBox(child: Image.asset('img/back.png')),
        SizedBox(
          height: 270,
          width: double.infinity,
          child: Column(children: [
            const SizedBox(height: 10),
           Row(
             children: [
               GestureDetector(onTap:(){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => const MinersProfile()),
                 );

               },child:    ClipRRect(child: Image.asset('img/iconback.png',height: 20,width: 30,color: Colors.white,),),),


             const Padding(
               padding: EdgeInsets.only(top: 30.0,bottom: 30,left: 100),
               child: Center(
                 child: (Text(
                   'Miner Details',
                   style: (TextStyle(
                     color: CustomColor.basic,
                     fontSize: 21,

                   )),
                 )),
               ),
             ),

           ],),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10),
                  child: CircleAvatar(
                    backgroundColor: CustomColor.basic,
                    radius: 39,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(39),
                      child: Image.asset(
                        'img/3.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'Name:  ',
                            style: (TextStyle(
                              color: CustomColor.logo,
                              fontSize: 19,
                            ))),
                         TextSpan(
                          text: 'Paulo ',
                          style: (TextStyle(
                            color: CustomColor.basic,
                          )),
                        )
                      ]),
                    ),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'Age:  ',
                            style: (TextStyle(
                              color: CustomColor.logo,
                              fontSize: 19,
                            ))),
                        TextSpan(
                          text: '21 Year',
                          style: (TextStyle(
                            color: CustomColor.basic,
                          )),
                        )
                      ]),
                    ),
                    RichText(
                      text: const TextSpan(children: [
                        TextSpan(
                            text: 'Location:  ',
                            style: (TextStyle(

                              color: CustomColor.logo,
                              fontSize: 19,
                            ))),
                        TextSpan(
                          text: 'Mansoura',
                          style: (TextStyle(
                            color: CustomColor.basic,
                          )),
                        )
                      ]),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Profile()));
            },
              child: Padding(
           padding: const EdgeInsets.only(right: 20.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Container(
                 decoration: BoxDecoration(
                     color: CustomColor.basic,
                     borderRadius: BorderRadius.circular(30)),
                 height: 30,
                 width: 120,
                 child: const Center(
                   child: Text(
                     'view profile',
                     style: TextStyle(
                       color: CustomColor.logo,
                     ),
                   ),
                 ),
               ),
             ],
           ),
         ),)


          ]),
        ),
      ]),
    Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: CustomColor.logo),
                borderRadius: BorderRadius.circular(30)),
            height: 50,
            width: 300,
            child: const Center(
              child: Text(
                'System control panel',

                style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontSize: 18,
                    color: CustomColor.logo),
              ),
            ),
          ),
        const SizedBox(height: 20,),
        const BatteryMq2(),
        const Mq507(),
        const HumidityMq02(),
      const  OxygeninBloodHeartbeat(),
       const Temperature(),
        Container(
            width: 280,
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1, color:CustomColor.logo,),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.notifications_none),
                SizedBox(width: 5,),
                 Center(
                  child: Text(
                    'Alert',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color:CustomColor.black,),
                  ),
                ),
              ],
            )),
      const SizedBox(height: 20,)
          ]),
    ));
  }
}
