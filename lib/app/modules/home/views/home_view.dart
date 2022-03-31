import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final allyears = [
    2022,
    2021,
    2020,
    2019,
    2018,
    2017,
    2016,
    2015,
    2014,
    2013,
    2012,
    2011,
    2010,
    2009,
    2006,
    2005,
    2004
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('REPOSITORY UNSOED'),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Get.toNamed(Routes.PENCARIAN);
              },
              icon: Icon(Icons.search_outlined),
            )
          ],
        ),
        drawerScrimColor: Colors.white,
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
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 4, vertical: 12),
          children: [
            Container(
              margin: EdgeInsets.only(left: 4),
              child: Text(
                'Welcome to Mobile Repository\nUniversitas Jenderal Soedirman',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Form(
                key: controller.searchFormKey,
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
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: ElevatedButton(
                        onPressed: () {
                          controller.search();
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
              height: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Get.snackbar(
                        "Fitur ini belum tersedia.",
                        "Silahkan gunakan versi web ^_^",
                        snackPosition: SnackPosition.BOTTOM,
                        duration: Duration(seconds: 1, milliseconds: 500),
                        animationDuration: Duration(milliseconds: 500),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/folder.png',
                              height: 120,
                              width: 120,
                            ),
                            Container(
                              child: Text(
                                "Latest Addition",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.snackbar(
                        "Fitur ini belum tersedia.",
                        "Silahkan gunakan versi web ^_^",
                        snackPosition: SnackPosition.BOTTOM,
                        duration: Duration(seconds: 1, milliseconds: 500),
                        animationDuration: Duration(milliseconds: 500),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/folder.png',
                              height: 120,
                              width: 120,
                            ),
                            Container(
                              child: Text(
                                "By Division",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              height: 180,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Get.snackbar(
                        "Fitur ini belum tersedia.",
                        "Silahkan gunakan versi web ^_^",
                        snackPosition: SnackPosition.BOTTOM,
                        duration: Duration(seconds: 1, milliseconds: 500),
                        animationDuration: Duration(milliseconds: 500),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/folder.png',
                              height: 120,
                              width: 120,
                            ),
                            Container(
                              child: Text(
                                "By Author",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.FOLDER,
                          arguments: {'bred': "By Years", 'allyear': allyears});
                    },
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/folder.png',
                              height: 120,
                              width: 120,
                            ),
                            Container(
                              child: Text(
                                "By Years",
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),

            // SizedBox(height: 12,),
            // Container(
            //   margin: EdgeInsets.only(left: 4),
            //   child: Text(
            //     'By Subject',
            //     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            //   ),
            // ),
            // Container(
            //   height: 200,
            //   child: ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     itemCount: 20,
            //     itemBuilder: (context, index) {
            //       return InkWell(
            //         child: Card(
            //           elevation: 4,
            //           child: Column(
            //             children: [
            //               Image(
            //                 height: 120,
            //                 width: 120,
            //                 image: AssetImage('folder.png'),
            //               ),
            //               Container(
            //                 width: 120,
            //                 child: Text(
            //                   'A134 Agricultural experiment stations',
            //                   textAlign: TextAlign.center,
            //                   overflow: TextOverflow.ellipsis,
            //                   maxLines: 3,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
