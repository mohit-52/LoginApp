import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import '../../../constants/colors.dart';
import '../../../constants/image_string.dart';
import '../../../constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_borading_page_widget.dart';



class OnBoardingController extends GetxController {

  final controller = LiquidController();
  RxInt currenPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoadingImage1,
        title: mOnBoardingTitle1,
        subtitle: mOnBoardingSubTitle1,
        counterText: mOnBoardingCounter1,
        bgColor: mOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoadingImage2,
        title: mOnBoardingTitle2,
        subtitle: mOnBoardingSubTitle2,
        counterText: mOnBoardingCounter2,
        bgColor: mOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: mOnBoadingImage3,
        title: mOnBoardingTitle3,
        subtitle: mOnBoardingSubTitle3,
        counterText: mOnBoardingCounter3,
        bgColor: mOnBoardingPage3Color,
      ),
    ),
  ];

  onPageChangedCallback(int activePageIndex) {
    currenPage.value = activePageIndex;
  }
  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }
  skip() => controller.jumpToPage(page: 2);
}

