import 'dart:convert';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class KaryailmiahController extends GetxController {
  final box = GetStorage();
  var isfavorited = false.obs;
  var favlist = [].obs;

  void checkfav() {
    var title = Get.arguments["karya"]["title"];
    favlist.value = jsonDecode(box.read('fav'));
    var contain = favlist.where((element) => element["title"] == title);
    if (contain.isEmpty) {
      isfavorited.value = false;
    } else {
      isfavorited.value = true;
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    checkfav();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  void savetofavorite(karya) {
    if (box.read('fav') != null) {
      List<dynamic> favlist = [];
      favlist = jsonDecode(box.read('fav'));
      favlist..add(karya);
      var jsonstring = jsonEncode(favlist);
      box.write('fav', jsonstring);
    } else {
      List<dynamic> favlist = [];
      favlist..add(karya);
      var jsonstring = jsonEncode(favlist);
      box.write('fav', jsonstring);
    }
  }
}
