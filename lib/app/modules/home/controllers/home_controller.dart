import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final searchFormKey = GlobalKey<FormState>();
  final searchController = TextEditingController();
  final box = GetStorage();
  var favlist = [].obs;

  void firsttimefav() {
    if(box.read('fav') == null)
    favlist.value = [];
    var jsonstring = jsonEncode(favlist);
    box.write('fav', jsonstring);
  }

  final count = 0.obs;
  @override
  void onInit() {
    firsttimefav();
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
      Get.toNamed(Routes.PENCARIAN, arguments: searchController.value.text);
      searchController.clear();
    }
  }

  void increment() => count.value++;
}
