
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_app/src/constants/color.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';

import '../../../../common_widgets/fade_in_animation/fade_in_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    return  Scaffold(
      body: Stack(
        children:[
          UFadeInAnimation(
            durationInMs: 1600,
            animate: UAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftBefore: 0,
              leftAfter: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0
            ),
            child: Padding(
            padding: const EdgeInsets.all(uDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(image: AssetImage(uWelcomeImage)),
                 Text(uTitle,style: Theme.of(context).textTheme.headlineMedium,textAlign: TextAlign.center,),
                Text(uSubtitle,style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center,),

                Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: OutlinedButton(
                            onPressed: ()=> Get.to(()=>const LoginScreen()),
                            style: OutlinedButton.styleFrom(
                              shape: const RoundedRectangleBorder(),
                              foregroundColor: uSecondaryColor,
                              side: const BorderSide(color: uSecondaryColor),
                              padding: const EdgeInsets.symmetric(vertical: uButtonHeight),
                            ),
                            child:  Text(uLogin.toUpperCase())
                        )
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: ElevatedButton(
                            onPressed: ()=> Get.to(()=>const SignupScreen()),
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: uSecondaryColor),
                              padding: const EdgeInsets.symmetric(vertical: uButtonHeight),
                              foregroundColor: uWhiteColor,
                              shape: const RoundedRectangleBorder(),
                              backgroundColor: uSecondaryColor

                            ),
                            child: Text(uSignup.toUpperCase()
                            )
                        )
                    ),
                  ],
                ),

              ],
            ),
        ),
          ),
    ]
      )
    );
  }
}
