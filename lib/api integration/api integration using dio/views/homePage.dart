import 'package:flutter/material.dart';
import 'package:flutter_project_may/api%20integration/api%20integration%20using%20dio/utils/colors.dart';
import 'package:flutter_project_may/api%20integration/api%20integration%20using%20dio/views/detailsPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

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

  RefreshIndicator getData() {
    return RefreshIndicator(
      onRefresh: () {
        return controller.getposts();
      },
      child: ScrollablePositionedList.builder(
          itemScrollController: controller.itemController,
          physics: BouncingScrollPhysics(),
          itemCount: controller.post.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Get.to(DetailsDio(index: index)),
              child: Card(
                child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(controller.post[index].id.toString()),
                    ),
                  ),
                  title: Text(
                    controller.post[index].title,
                    style: TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(controller.post[index].body),
                ),
              ),
            );
          }),
    );
  }
}
