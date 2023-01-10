import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import '../../constants/image_string.dart';
import '../../constants/sizes.dart';

import 'fade_in_animation_controller.dart';
import 'fade_in_animation_model.dart';

class MFadeInAnimation extends StatelessWidget {
   MFadeInAnimation({
    Key? key,
    required this.durationInMs,
     required this.child,
     this.animate,
  }) : super(key: key);

  final controller = Get.put(FadeInAnimatorController());
  final int durationInMs;
  final MAnimatedPosition ? animate;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => AnimatedPositioned(
        duration: Duration(milliseconds: durationInMs),
        top: controller.animate.value ? animate!.topAfter: animate!.topBefore ,
        left: controller.animate.value ? animate!.leftAfter: animate!.leftBefore,
        bottom: controller.animate.value ? animate!.bottomAfter: animate!.bottomBefore ,
        right: controller.animate.value ? animate!.rightAfter: animate!.rightBefore ,
        height: controller.animate.value ? animate!.heightAfter: animate!.heightBefore ,
        width: controller.animate.value ? animate!.widthAfter: animate!.widthBefore ,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMs),
        opacity: controller.animate.value ? 1 : 0,
        child: child,
      ),),
    );
  }
}