import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../constants/color.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../model/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController{
  final controller = LiquidController();

  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(model: OnBoardingModel(
        image: uOb1,
        title: uTitle,
        subTitle: uSubtitle,
        coutnerText: uCounter1,
        bgColor: uOb1Color,

    ),
    ),
    OnBoardingPageWidget(model: OnBoardingModel(
        image: uOb2,
        title: uTitle,
        subTitle: uSubtitle,
        coutnerText: uCounter2,
        bgColor: uOb2Color,

    ),
    ),
    OnBoardingPageWidget(model: OnBoardingModel(
        image: uOb3,
        title: uTitle,
        subTitle: uSubtitle,
        coutnerText: uCounter3,
        bgColor: uOb3Color,

    ),
    )

  ];
  void onPageChangedCallback(int activePageIndex) => currentPage.value = activePageIndex;

  skip()=> controller.jumpToPage(page: 2);
  animateToNextSlide(){

    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

}