import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';


class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());

  controller.startSplashAnimation();
    return  Scaffold(
      body: Stack(
        children: [
          UFadeInAnimation(
            durationInMs: 1600,
            animate: UAnimatePosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: uDefaultSize,
              leftBefore: -80

            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(uAppName,style: Theme.of(context).textTheme.headlineLarge,),
                Text(uAppTagLine,style: Theme.of(context).textTheme.titleLarge,)
              ],
            ),
          ),

          UFadeInAnimation(
            durationInMs: 1600,
            animate: UAnimatePosition(
            bottomAfter: 200,
              bottomBefore: 0
          ),
            child: Container(
              padding: EdgeInsets.only(left: uDefaultSize),
                child: const Image(image: AssetImage(uSplashImage))),
          ),

        ],
      ),

    );
  }

}
