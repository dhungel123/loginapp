import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:login_app/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';

import '../../constants/text_strings.dart';


class UFadeInAnimation extends StatelessWidget {
   UFadeInAnimation({
    super.key,
  
    required this.durationInMs,
     required this.animate,
     required this.child,
  });

  final controller = Get.put(FadeInAnimationController());
  final int durationInMs;
  final UAnimatePosition animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(() =>AnimatedPositioned(
        duration:  Duration(milliseconds: durationInMs),
        top: controller.animate.value? animate!.topAfter: animate!.topBefore,
        left: controller.animate.value? animate!.leftAfter : animate!.leftBefore,
        bottom: controller.animate.value? animate!.bottomAfter : animate!.bottomBefore,
        right: controller.animate.value? animate!.rightAfter : animate!.rightBefore ,
        child:AnimatedOpacity(
          opacity: controller.animate.value ? 1 : 0,
          duration:  Duration(milliseconds: durationInMs),
          child: child,
        )
    ),
    );
  }
}

