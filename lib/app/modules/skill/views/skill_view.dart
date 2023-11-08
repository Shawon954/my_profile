import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:my_profile/app/responsive/responsive_screen.dart';

import '../controllers/skill_controller.dart';

class SkillView extends GetView<SkillController> {
  const SkillView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(

        child: Container(

          child: Column(
            children: [
              Row(
                children: [



                  Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),Text("Hello"),
                ],
              ),

            ],
          ),
        ),

    );
  }
}
