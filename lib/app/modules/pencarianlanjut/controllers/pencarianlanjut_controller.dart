import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/providers/karyailmiahP.dart';

class PencarianlanjutController extends GetxController with StateMixin {
  var listkarya = [].obs;
  final searchControllertitle = TextEditingController();
  final searchControllercreator = TextEditingController();
  final searchControllerabstract = TextEditingController();
  var serres = "".obs;

  void fetchsearch(title, creator, abstract) async {
    //title kosong
    if (title == "") {
      //3 kemungkinan
      //creator kosong abstract isi
      //creator isi abstract kosong
      //creator isi abstract isi

      //creator kosong
      if (creator == "") {
        change(null, status: RxStatus.loading());
        var splittedtext = abstract.split(" ");
        var combinedtext;
        for (int i = 0; i < splittedtext.length; i++) {
          if (i == 0) {
            combinedtext = splittedtext[i];
          } else {
            combinedtext = combinedtext + "+" + splittedtext[i];
          }
        }
        serres.value = "Abstract matches '${abstract}'";
        await KaryaProvider().getSearchA(combinedtext).then(
          (value) {
            if (value.statusCode == 200) {
              listkarya.assignAll(value.body);
              change(null, status: RxStatus.success());
            } else {
              change(null,
                  status:
                      RxStatus.error("Error!\nSilahkan Periksa Koneksi Kamu!"));
            }
          },
        );
      }
      //creator isi
      else {
        //abstract kosong
        if (abstract == "") {
          change(null, status: RxStatus.loading());
          var splittedtext = creator.split(" ");
          var combinedtext;
          for (int i = 0; i < splittedtext.length; i++) {
            if (i == 0) {
              combinedtext = splittedtext[i];
            } else {
              combinedtext = combinedtext + "+" + splittedtext[i];
            }
          }
          serres.value = "Creator is '${creator}'";
          await KaryaProvider().getSearchC(combinedtext).then(
            (value) {
              if (value.statusCode == 200) {
                listkarya.assignAll(value.body);
                change(null, status: RxStatus.success());
              } else {
                change(null,
                    status: RxStatus.error(
                        "Error!\nSilahkan Periksa Koneksi Kamu!"));
              }
            },
          );
        }
        //abstract isi
        else {
          change(null, status: RxStatus.loading());
          var splittedtext = creator.split(" ");
          var combinedtext;
          for (int i = 0; i < splittedtext.length; i++) {
            if (i == 0) {
              combinedtext = splittedtext[i];
            } else {
              combinedtext = combinedtext + "+" + splittedtext[i];
            }
          }
          var splittedtext2 = abstract.split(" ");
          var combinedtext2;
          for (int i = 0; i < splittedtext2.length; i++) {
            if (i == 0) {
              combinedtext2 = splittedtext2[i];
            } else {
              combinedtext2 = combinedtext2 + "+" + splittedtext2[i];
            }
          }
          serres.value =
              "Creator is '${creator}' AND Abstract matches '${abstract}'";
          await KaryaProvider().getSearchCA(combinedtext, combinedtext2).then(
            (value) {
              if (value.statusCode == 200) {
                listkarya.assignAll(value.body);
                change(null, status: RxStatus.success());
              } else {
                change(null,
                    status: RxStatus.error(
                        "Error!\nSilahkan Periksa Koneksi Kamu!"));
              }
            },
          );
        }
      }
    }
    //title isi
    else {
      //4 kemungkinan
      //creator kosong abstract kosong
      //creator kosong abstract isi
      //creator isi abstract kosong
      //creator isi abstract isi

      //creator kosong
      if (creator == "") {
        //abstract kosong
        if (abstract == "") {
          change(null, status: RxStatus.loading());
          var splittedtext = title.split(" ");
          var combinedtext;
          for (int i = 0; i < splittedtext.length; i++) {
            if (i == 0) {
              combinedtext = splittedtext[i];
            } else {
              combinedtext = combinedtext + "+" + splittedtext[i];
            }
          }
          serres.value = "Title matches '${title}'";
          await KaryaProvider().getSearchT(combinedtext).then(
            (value) {
              if (value.statusCode == 200) {
                listkarya.assignAll(value.body);
                change(null, status: RxStatus.success());
              } else {
                change(null,
                    status: RxStatus.error(
                        "Error!\nSilahkan Periksa Koneksi Kamu!"));
              }
            },
          );
        }
        //abstract isi
        else {
          change(null, status: RxStatus.loading());
          var splittedtext = title.split(" ");
          var combinedtext;
          for (int i = 0; i < splittedtext.length; i++) {
            if (i == 0) {
              combinedtext = splittedtext[i];
            } else {
              combinedtext = combinedtext + "+" + splittedtext[i];
            }
          }
          var splittedtext2 = abstract.split(" ");
          var combinedtext2;
          for (int i = 0; i < splittedtext2.length; i++) {
            if (i == 0) {
              combinedtext2 = splittedtext2[i];
            } else {
              combinedtext2 = combinedtext2 + "+" + splittedtext2[i];
            }
          }
          serres.value =
              "Title matches '${title}' AND Abstract matches '${abstract}'";
          await KaryaProvider().getSearchTA(combinedtext, combinedtext2).then(
            (value) {
              if (value.statusCode == 200) {
                listkarya.assignAll(value.body);
                change(null, status: RxStatus.success());
              } else {
                change(null,
                    status: RxStatus.error(
                        "Error!\nSilahkan Periksa Koneksi Kamu!"));
              }
            },
          );
        }
      }
      //creator isi
      else {
        //abstract kosong
        if (abstract == "") {
          change(null, status: RxStatus.loading());
          var splittedtext = title.split(" ");
          var combinedtext;
          for (int i = 0; i < splittedtext.length; i++) {
            if (i == 0) {
              combinedtext = splittedtext[i];
            } else {
              combinedtext = combinedtext + "+" + splittedtext[i];
            }
          }
          var splittedtext2 = creator.split(" ");
          var combinedtext2;
          for (int i = 0; i < splittedtext2.length; i++) {
            if (i == 0) {
              combinedtext2 = splittedtext2[i];
            } else {
              combinedtext2 = combinedtext2 + "+" + splittedtext2[i];
            }
          }
          serres.value = "Title matches '${title}' AND Creator is '${creator}'";
          await KaryaProvider().getSearchTC(combinedtext, combinedtext2).then(
            (value) {
              if (value.statusCode == 200) {
                listkarya.assignAll(value.body);
                change(null, status: RxStatus.success());
              } else {
                change(null,
                    status: RxStatus.error(
                        "Error!\nSilahkan Periksa Koneksi Kamu!"));
              }
            },
          );
        }
        //abstract isi
        else {
          change(null, status: RxStatus.loading());
          var splittedtext = title.split(" ");
          var combinedtext;
          for (int i = 0; i < splittedtext.length; i++) {
            if (i == 0) {
              combinedtext = splittedtext[i];
            } else {
              combinedtext = combinedtext + "+" + splittedtext[i];
            }
          }
          var splittedtext2 = creator.split(" ");
          var combinedtext2;
          for (int i = 0; i < splittedtext2.length; i++) {
            if (i == 0) {
              combinedtext2 = splittedtext2[i];
            } else {
              combinedtext2 = combinedtext2 + "+" + splittedtext2[i];
            }
          }
          var splittedtext3 = abstract.split(" ");
          var combinedtext3;
          for (int i = 0; i < splittedtext3.length; i++) {
            if (i == 0) {
              combinedtext3 = splittedtext3[i];
            } else {
              combinedtext3 = combinedtext3 + "+" + splittedtext3[i];
            }
          }
          serres.value =
              "Title matches '${title}' AND Creator is '${creator}' AND Abstract Matches '${abstract}'";
          await KaryaProvider()
              .getSearchTCA(combinedtext, combinedtext2, combinedtext3)
              .then(
            (value) {
              if (value.statusCode == 200) {
                listkarya.assignAll(value.body);
                change(null, status: RxStatus.success());
              } else {
                change(null,
                    status: RxStatus.error(
                        "Error!\nSilahkan Periksa Koneksi Kamu!"));
              }
            },
          );
        }
      }
    }
  }

  final count = 0.obs;
  @override
  void onInit() {
    change(null, status: RxStatus.empty());
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void search(title, creator, abstract) {
    if (title == "" && creator == "" && abstract == "") {
      change(null,
          status: RxStatus.error("Kamu harus mengisi setidaknya 1 bidang"));
    } else {
      fetchsearch(title, creator, abstract);
    }
  }

  void increment() => count.value++;
}
