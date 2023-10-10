


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/color.dart';

import 'package:login_app/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
    OnboardingScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
  final obController = OnBoardingController();



    return Scaffold(
    body: Stack(
      alignment: Alignment.center,
      children: [
        LiquidSwipe(
            pages: obController.pages,
          liquidController: obController.controller,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal:true,
          onPageChangeCallback: obController.onPageChangedCallback,

        ) ,
        Positioned(
          bottom: 60,
            child: OutlinedButton(onPressed: (){
                obController.animateToNextSlide();

            },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),



                ),
                child: Container(
                  padding: const EdgeInsets.all(15),
                 decoration: const BoxDecoration(
                   color: uDarkColor,
                   shape: BoxShape.circle
                 ),
                    child: const Icon(Icons.arrow_forward)))
        ),
        Positioned(
          top: 50,
            right: 20,
            child: TextButton(
              onPressed: ()=>obController.skip(),
              child: Text('Skip',style: TextStyle(color: Colors.green,fontSize: 16),),
              )
        ),
         Obx(
         () =>Positioned(
         bottom: 10,
    child: AnimatedSmoothIndicator(
    activeIndex:obController.currentPage.value,
    count:3,
    effect: const WormEffect(
    activeDotColor: Color(0xff272727),


    ),
    )
    ))
      ],
    ),
    );
  }


}


