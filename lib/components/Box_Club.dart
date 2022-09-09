import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'clubs_list.dart';

class Box_Club extends StatelessWidget {
  final ClubLIST clublist;
  const Box_Club({Key? key, required this.clublist}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
        onTap: ()=> Get.to,
        child:Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
//padding: EdgeInsets.all(1),
            width: 160,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
                image:DecorationImage(
                    image: AssetImage(clublist.image,)
                )
            ),

          ),
        )
    );
  }
}

