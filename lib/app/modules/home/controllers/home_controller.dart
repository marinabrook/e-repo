import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/modules/models/userM.dart';

import 'package:repository_mobile_unsoed/app/providers/userP.dart';

class HomeController extends GetxController {
  
  var users;

  void adduser(String name, String pekerjaan) {
    // UserProvider().postUser("ilham kurniawan", "ngodinger").then((value) => print(value.body));
    UserProvider().getUser().then((value) {
      print(value.statusCode);
      print(value.body);
      var users = User.fromJson(value.body).data;
      var namadepan = users[0].firstName;
      var namablkg = users[0].lastName;
      print(namadepan + namablkg);
    });
  }

  Future<List<Datum?>> getUserdata() async{
    var getuser;
    await UserProvider().getUser().then((value) {
      getuser = User.fromJson(value.body).data;
    });
    return getuser;
  }

  

  

  final count = 0.obs;
  @override
  void onInit() {
    getUserdata();
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
