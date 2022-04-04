// ignore_for_file: invalid_use_of_protected_member

import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';
import '../controllers/favorite_controller.dart';

class FavoriteView extends GetView<FavoriteController> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Favorites'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back),
          )
        ],
      ),
      drawerScrimColor: Colors.white,
      drawer: ListView(
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/uptbackground.png'),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black26, BlendMode.darken)),
            ),
            currentAccountPicture: Image.asset('assets/logounsoed.png'),
            accountName: Text(
              'Repository Mobile',
              style: TextStyle(shadows: <Shadow>[
                Shadow(
                  offset: Offset(3, 2),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ]),
            ),
            accountEmail: Text(
              'Universitas Jenderal Soedirman',
              style: TextStyle(shadows: <Shadow>[
                Shadow(
                  offset: Offset(3, 2),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ]),
            ),
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
            },
            leading: Icon(Icons.star),
            title: Text('Favorite'),
          ),
          ListTile(
            onTap: () {
              Get.offNamed(Routes.ABOUT);
            },
            leading: Icon(Icons.person_sharp),
            title: Text('About'),
          ),
          ListTile(
            onTap: () {
              Get.offNamed(Routes.PETUNJUK);
            },
            leading: Icon(Icons.quiz_rounded),
            title: Text('Petunjuk Unggah Mandiri'),
          ),
          ListTile(
            onTap: () {
              Get.offNamed(Routes.FAQ);
            },
            leading: Icon(Icons.question_answer),
            title: Text('FAQ'),
          ),
          ListTile(
            onTap: () {
              Get.offNamed(Routes.PENCARIAN);
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
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        child: (Obx(
          (() => DraggableScrollbar.rrect(
                alwaysVisibleScrollThumb: false,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.only(right: 4),
                heightScrollThumb: 72,
                controller: _scrollController,
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
                  itemCount: controller.favlist.value.length,
                  itemBuilder: (context, index) {
                    var karya = controller.favlist.value[index];
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
                          Dismissible(
                            onDismissed: (direction) {
                              controller.removefav(title);
                            },
                            key: Key(title),
                            direction: DismissDirection.horizontal,
                            confirmDismiss: (DismissDirection direction) async {
                              return await Get.defaultDialog(
                                confirmTextColor: Colors.white,
                                textConfirm: "Yes",
                                onConfirm: () => Get.back(result: true),
                                textCancel: "No",
                                onCancel: () => false,
                                middleText:
                                    "Are you sure want to remove this item from your favorite?",
                                title: "Confirm",
                              );
                            },
                            background: Container(
                              color: Colors.red,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.delete_forever,
                                    size: 42,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    size: 42,
                                  ),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Image.asset('assets/file.png'),
                                  title: Text(title),
                                  subtitle: Text(
                                      '${nambel}, ${namdep} | ${date} | ${thesistype} ${type} | ${institution}'),
                                  onTap: () {
                                    Get.toNamed(Routes.KARYAILMIAH, arguments: {
                                      'year': 'My Favorites',
                                      'bred': 'root > My Favorites',
                                      'karya': karya
                                    });
                                  },
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          Dismissible(
                            onDismissed: (direction) {
                              controller.removefav(title);
                            },
                            key: Key(title),
                            direction: DismissDirection.horizontal,
                            confirmDismiss: (DismissDirection direction) async {
                              return await Get.defaultDialog(
                                confirmTextColor: Colors.white,
                                textConfirm: "Yes",
                                onConfirm: () => Get.back(result: true),
                                textCancel: "No",
                                onCancel: () => false,
                                middleText:
                                    "Are you sure want to remove this item from your favorite?",
                                title: "Confirm",
                              );
                            },
                            background: Container(
                              color: Colors.red,
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.delete_forever,
                                    size: 42,
                                  ),
                                  Icon(
                                    Icons.delete_forever,
                                    size: 42,
                                  ),
                                ],
                              ),
                            ),
                            child: Column(
                              children: [
                                ListTile(
                                  leading: Image.asset('assets/file.png'),
                                  title: Text(title),
                                  subtitle: Text(
                                      '${nambel}, ${namdep} | ${date} | ${thesistype} ${type} | ${institution}'),
                                  onTap: () {
                                    Get.toNamed(Routes.KARYAILMIAH, arguments: {
                                      'year': 'My Favorites',
                                      'bred': 'root > My Favorites',
                                      'karya': karya
                                    });
                                  },
                                ),
                                Divider(),
                              ],
                            ),
                          ),
                        ],
                      );
                    }
                  },
                ),
              )),
        )),
      ),
    );
  }
}
