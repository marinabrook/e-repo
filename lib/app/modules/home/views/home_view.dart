import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/modules/listkaryailmiah/controllers/listkaryailmiah_controller.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  var allyears = [2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015, 2014, 2013, 2012, 2011, 2010, 2009, 2006, 2005, 2004];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REPOSITORY UNSOED'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.search_outlined))
        ],
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
            onTap: () {},
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
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        children: [
          Container(
            margin: EdgeInsets.only(left: 4),
            child: Text(
              'Welcome to Mobile Repository Universitas Jenderal Soedirman',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
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
                  onTap: () {},
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
                  onTap: () {},
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
          SizedBox(height: 32,),
          Container(
            height: 180,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
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
                    Get.toNamed(Routes.FOLDER, arguments: {
                      'bred': "By Years",
                      'allyear': allyears});
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
          Container(
            margin: EdgeInsets.only(left: 4),
            child: Text(
              'Most Downloaded Items',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/file.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 120,
                            child: Text(
                              'Implementasi dan Analisis Optimasi Bandwidth dengan Queue Tree Menggunakan Algoritma HTB',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            margin: EdgeInsets.only(left: 4),
            child: Text(
              'Top Authors',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            'assets/person.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 120,
                            child: Text(
                              'Ilham Suryanegara',
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 12,
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
    );
  }
}
