import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/providers/karyailmiahP.dart';

class PencarianController extends GetxController {
  //TODO: Implement PencarianController

  void fetchsearch() async {
    await KaryaProvider().getSearch("tiwul").then(
      (value) => print(value.body));
  }

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
  void increment() => count.value++;
}
