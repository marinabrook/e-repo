import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/providers/karyailmiahP.dart';

class ListkaryailmiahController extends GetxController with StateMixin {
  var listkarya = [].obs;
  RxList<dynamic> foundkarya = RxList<dynamic>([]);

  void fetchkarya(year) async {
    change(null, status: RxStatus.loading());

    await KaryaProvider().getKarya(year).then(
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
    fetchkarya(Get.arguments["year"]);
    foundkarya.value = listkarya;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void filterkarya(String namakarya) {
    List<dynamic> hasil = [];
    if (namakarya.isEmpty) {
      hasil = listkarya;
    } else {
      hasil = listkarya.where((element) {
        return element["title"]
                .toString()
                .toLowerCase()
                .contains(namakarya.toLowerCase()) ||
            element["creators"][0]["name"]["given"]
                .toString()
                .toLowerCase()
                .contains(namakarya.toLowerCase()) ||
            element["creators"][0]["name"]["family"]
                .toString()
                .toLowerCase()
                .contains(namakarya.toLowerCase());
      }).toList();
    }
    foundkarya.value = hasil;
  }

  void increment() => count.value++;
}
