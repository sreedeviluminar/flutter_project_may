import 'package:flutter/material.dart';
import 'package:flutter_project_may/api%20integration/api%20integration%20using%20dio/controller/product_controller.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DetailsDio extends StatelessWidget {
  int index;
  DetailsDio({super.key, required this.index});

  Product_controller controller = Get.find<Product_controller>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              controller.post[index].id.toString()
            ),
            Text(
                controller.post[index].title
            ),
            Text(
                controller.post[index].body
            )
          ],
        ),
      ),
    );
  }
}
