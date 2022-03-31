// ignore_for_file: invalid_use_of_protected_member

import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';
import '../controllers/listkaryailmiah_controller.dart';

class ListkaryailmiahView extends GetView<ListkaryailmiahController> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('${Get.arguments["year"]}'),
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
              onTap: () {
                Get.back();
                Get.toNamed(Routes.FAVORITE);
              },
              leading: Icon(Icons.star),
              title: Text('Favorite'),
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.toNamed(Routes.ABOUT);
              },
              leading: Icon(Icons.person_sharp),
              title: Text('About'),
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.toNamed(Routes.PETUNJUK);
              },
              leading: Icon(Icons.quiz_rounded),
              title: Text('Petunjuk Unggah Mandiri'),
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.toNamed(Routes.FAQ);
              },
              leading: Icon(Icons.question_answer),
              title: Text('FAQ'),
            ),
            ListTile(
              onTap: () {
                Get.back();
                Get.toNamed(Routes.PENCARIAN);
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
            Container(
              margin: EdgeInsets.only(left: 4),
              child: Text(
                '${Get.arguments["bred"]} > ${Get.arguments["year"]}',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              child: TextField(
                onChanged: (value) {
                  controller.filterkarya(value);
                },
                decoration: InputDecoration(
                  labelText: 'Search',
                  suffixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.0,
                    ),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
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
                      itemCount: controller.foundkarya.value.length,
                      itemBuilder: (context, index) {
                        var karya = controller.foundkarya.value[index];
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
                                    'year': '${Get.arguments["year"]}',
                                    'bred':
                                        '${Get.arguments["bred"]} > ${Get.arguments["year"]}',
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
                                    'year': '${Get.arguments["year"]}',
                                    'bred':
                                        '${Get.arguments["bred"]} > ${Get.arguments["year"]}',
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
                onLoading: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Silahkan tunggu sebentar.. .",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                onEmpty: Center(
                  child: Text("Tidak ada Data"),
                ),
                onError: (error) => Center(
                  child: Text(
                    error.toString(),
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
