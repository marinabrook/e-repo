import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/pencarian_controller.dart';

class PencarianView extends GetView<PencarianController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          appBar: AppBar(
            title: Text('Browse'),
            centerTitle: true,
          ),
          drawer: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('accountName'),
                accountEmail: Text('accountEmail'),
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
                onTap: () {},
                leading: Icon(Icons.login),
                title: Text('Login'),
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
                    'lolz',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Form(
                  // key: controller.searchFormKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: TextFormField(
                          // controller: controller.searchController,
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
                            contentPadding: EdgeInsets.symmetric(horizontal: 12)
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: ElevatedButton(
                          onPressed: () {
                            // controller.search();
                            controller.fetchsearch();
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
              ])),
    );
  }
}
