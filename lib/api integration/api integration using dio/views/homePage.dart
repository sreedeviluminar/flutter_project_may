import 'package:flutter/material.dart';
import 'package:flutter_project_may/api%20integration/api%20integration%20using%20dio/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controller/product_controller.dart';

class HomeDio extends StatelessWidget {
  Product_controller controller = Get.put(Product_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      floatingActionButton: Obx(() =>
          controller.isInternetConnected.value ? buildFAB() : Container()),
      body: Obx(() => SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: controller.isInternetConnected.value
                ? (controller.isLoading.value ? loadAnimation() : getData())
                : noInternet(context),
          )),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        controller.isListScrollDown.value
            ? controller.ScrolltoUp()
            : controller.ScrolltoDown();
      },
      backgroundColor: MyColors.prcolor,
      child: FaIcon(
        controller.isListScrollDown.value
            ? FontAwesomeIcons.arrowUp
            : FontAwesomeIcons.arrowDown,
      ),
    );
  }

Center loadAnimation() {
    return Center(
      child: SizedBox(
        width: 150,
        height: 150,
        child: Lottie.asset("assets/animations/loading.json"),
      ),
    );
}
}
