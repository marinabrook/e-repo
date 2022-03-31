import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class FavoriteController extends GetxController {
  final box = GetStorage();
  var favlist = [].obs;

  void fetchfav() {
    favlist.value = jsonDecode(box.read('fav'));
  }

  void removefav(title) {
    favlist.removeWhere((element) => element['title'] == title);
    var jsonstring = jsonEncode(favlist);
    box.write('fav', jsonstring);
  }

  final count = 0.obs;
  @override
  void onInit() {
    fetchfav();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
