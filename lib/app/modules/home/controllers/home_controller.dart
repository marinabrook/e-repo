import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';


class HomeController extends GetxController {
  final searchFormKey = GlobalKey<FormState>();
  final searchController = TextEditingController();
  
  

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void search() {
    if (searchFormKey.currentState!.validate()) {
      // print(searchController.text);
      Get.toNamed(Routes.PENCARIAN, arguments: searchController.value.text);
      searchController.clear();
    }
  }

  void increment() => count.value++;
}
