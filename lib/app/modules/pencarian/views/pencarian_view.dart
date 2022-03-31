// ignore_for_file: invalid_use_of_protected_member

import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/pencarian_controller.dart';

class PencarianView extends GetView<PencarianController> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Browse'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back))
          ],
        ),
        drawer: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset('assets/logounsoed.png'),
              accountName: Text('Repository Mobile'),
              accountEmail: Text('Universitas Jenderal Soedirman'),
            ),
            ListTile(
              onTap: () {
                Get.offAllNamed(Routes.HOME);
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.star),
              title: Text('Favorite'),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.ABOUT);
              },
              leading: Icon(Icons.person_sharp),
              title: Text('About'),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.PETUNJUK);
              },
              leading: Icon(Icons.quiz_rounded),
              title: Text('Petunjuk Unggah Mandiri'),
            ),
            ListTile(
              onTap: () {
                Get.toNamed(Routes.FAQ);
              },
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
            ),
            ListTile(
              onTap: () {
                Get.back();
              },
              leading: Icon(Icons.search_outlined),
              title: Text('Browse'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('Login'),
              trailing: Icon(Icons.lock),
            ),
          ],
        ),
        drawerScrimColor: Colors.white,
        body: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
          children: [
            Obx(() => Container(
                  margin: EdgeInsets.only(left: 4),
                  child: Center(
                    child: Text(
                      'Search results for ${controller.serres}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: controller.searchFormKey2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextFormField(
                        controller: controller.searchController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Kamu harus mengisi setidaknya satu kata';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            labelText: 'Search',
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.blue,
                                width: 1.0,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.0,
                              ),
                            ),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12)),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: ElevatedButton(
                        onPressed: () {
                          // // controller.search();
                          controller
                              .search(controller.searchController.value.text);
                          FocusScope.of(context).unfocus();
                        },
                        child: Text("SEARCH"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.77,
              child: controller.obx(
                (state) {
                  return DraggableScrollbar.rrect(
                    alwaysVisibleScrollThumb: false,
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.only(right: 4),
                    heightScrollThumb: 72,
                    controller: _scrollController,
                    child: ListView.builder(
                      controller: _scrollController,
                      scrollDirection: Axis.vertical,
                      itemCount: controller.listkarya.value.length,
                      itemBuilder: (context, index) {
                        var karya = controller.listkarya.value[index];
                        var title = karya["title"];
                        var banyakpengarang = karya["creators"].length;
                        List listnamdep = [];
                        List listnambek = [];
                        for (int i = 0; i < banyakpengarang; i++) {
                          listnamdep.insert(
                              i, karya["creators"][i]["name"]["given"]);
                          listnambek.insert(
                              i, karya["creators"][i]["name"]["family"]);
                        }
                        var namdep = listnamdep[0];
                        var nambel = listnambek[0];
                        var date = karya["date"];
                        var thesistype = karya["thesis_type"];
                        var type = karya["type"];
                        var institution = karya["institution"];

                        if (index == 0) {
                          return Column(
                            children: [
                              Divider(),
                              ListTile(
                                leading: Image.asset('assets/file.png'),
                                title: Text(title),
                                subtitle: Text(
                                    '${nambel}, ${namdep} | ${date} | ${thesistype} ${type} | ${institution}'),
                                onTap: () {
                                  Get.toNamed(Routes.KARYAILMIAH, arguments: {
                                    'year': 'Search',
                                    'bred': 'root > search',
                                    'karya': karya
                                  });
                                },
                              ),
                              Divider(),
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              ListTile(
                                leading: Image.asset('assets/file.png'),
                                title: Text(title),
                                subtitle: Text(
                                    '${nambel}, ${namdep} | ${date} | ${thesistype} ${type} | ${institution}'),
                                onTap: () {
                                  Get.toNamed(Routes.KARYAILMIAH, arguments: {
                                    'year': 'Search',
                                    'bred': 'root > search',
                                    'karya': karya
                                  });
                                },
                              ),
                              Divider(),
                            ],
                          );
                        }
                      },
                    ),
                  );
                },
                onEmpty: Center(
                  child: Text(""),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
