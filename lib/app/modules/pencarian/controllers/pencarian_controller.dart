import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/providers/karyailmiahP.dart';

class PencarianController extends GetxController with StateMixin {
  //TODO: Implement PencarianController
  final searchFormKey2 = GlobalKey<FormState>();
  var listkarya = [].obs;
  final searchController = TextEditingController();
  var serres = "".obs;

  void fetchsearch(kata) async {
    change(null, status: RxStatus.loading());
    var splittedtext = kata.split(" ");
    var combinedtext;
    for (int i = 0; i < splittedtext.length; i++) {
      if (i == 0) {
        combinedtext = splittedtext[i];
      } else {
        combinedtext = combinedtext + "+" + splittedtext[i];
      }
    }
    serres.value = kata;
    await KaryaProvider().getSearch(combinedtext).then(
      (value) {
        if (value.statusCode == 200) {
          listkarya.assignAll(value.body);
          change(null, status: RxStatus.success());
        } else {
          change(null,
              status: RxStatus.error("Error!\nSilahkan Periksa Koneksi Kamu!"));
        }
      },
    );
  }

  final count = 0.obs;
  @override
  void onInit() {
    fetchsearch(Get.arguments);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void search(kata){
    if (searchFormKey2.currentState!.validate()){
      fetchsearch(kata);
    }
  }
  void increment() => count.value++;
}
