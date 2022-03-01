import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:repository_mobile_unsoed/app/modules/models/karyailmiahM.dart';
import 'package:repository_mobile_unsoed/app/providers/karyailmiahP.dart';

class ListkaryailmiahController extends GetxController {
  var karil;
  var getkarya;

  Future<List<dynamic>> getKaryadata() async {
    List<dynamic> getkarya = await KaryaProvider().getKarya().then((value) {
      List<dynamic> getkarya = value.body;
      return getkarya;
    });

    return getkarya;
  }

  void testKaryadata() async {
    await KaryaProvider().getKarya().then((value) {
      var banyakpengarang = value.body[4]["creators"].length;
      List listnamdep = [];
      List listnambek = [];
      
      for(int i = 0; i < banyakpengarang; i++){
        listnamdep.insert(i, value.body[4]["creators"][i]["name"]["given"]);
        listnambek.insert(i, value.body[4]["creators"][i]["name"]["family"]);
      }
      print(listnamdep[0] + listnambek[0]);
    });
  }

  final count = 0.obs;
  @override
  void onInit() {
    getKaryadata();
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
