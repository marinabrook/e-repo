import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/providers/karyailmiahP.dart';

class ListkaryailmiahController extends GetxController with StateMixin {
  
  var listkarya = [].obs;
  RxList<dynamic> foundkarya = RxList<dynamic>([]);

  // Future<List<dynamic>> getKaryadata(year) async {
  //   List<dynamic> getkarya = await KaryaProvider().getKarya(year).then((value) {
  //     List<dynamic> getkarya = value.body;
  //     return getkarya;
  //   });
  //   return getkarya;
  // }

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
  // void testKaryadata() async {
  //   await KaryaProvider().getKarya().then((value) {
  //     // var banyakpengarang = value.body[4]["creators"].length;
  //     // List listnamdep = [];
  //     // List listnambek = [];

  //     // for(int i = 0; i < banyakpengarang; i++){
  //     //   listnamdep.insert(i, value.body[4]["creators"][i]["name"]["given"]);
  //     //   listnambek.insert(i, value.body[4]["creators"][i]["name"]["family"]);
  //     // }
  //     // print(listnamdep[0] + listnambek[0]);

  //     var banyakdoc = value.body[0]["documents"].length;
  //     List listdoc = [];
  //     for(int i = 0; i < banyakdoc; i++){
  //       listdoc.insert(i, value.body[0]["documents"][i]);
  //     }
  //     listdoc.sort((a,b)=> a["placement"].compareTo(b["placement"]));
  //     for(int i = 0; i < banyakdoc; i++){
  //       print(listdoc[i]["formatdesc"]);
  //     }
  //   });
  // }

  final count = 0.obs;
  @override
  void onInit() {
    // getKaryadata(Get.arguments["year"]);
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
