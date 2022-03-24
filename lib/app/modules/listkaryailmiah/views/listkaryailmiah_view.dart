import 'package:async/async.dart';
import 'package:draggable_scrollbar/draggable_scrollbar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/modules/models/karyailmiahM.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';

import '../controllers/listkaryailmiah_controller.dart';

class ListkaryailmiahView extends GetView<ListkaryailmiahController> {
  final ScrollController _scrollController = ScrollController();
  final AsyncMemoizer dCMemorizer = AsyncMemoizer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Get.arguments["year"]}'),
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
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.85,
          //   child: FutureBuilder<dynamic>(
          //     future: this.dCMemorizer.runOnce(() => ListkaryailmiahController().getKaryadata(Get.arguments["year"])),
          //     builder: (context, snapshot) {
          //       if (snapshot.connectionState == ConnectionState.done) {
          //         return DraggableScrollbar.rrect(
          //           alwaysVisibleScrollThumb: false,
          //           backgroundColor: Colors.blue,
          //           padding: EdgeInsets.only(right: 4),
          //           heightScrollThumb: 72,
          //           controller: _scrollController,
          //           child: ListView.builder(
          //             controller: _scrollController,
          //             scrollDirection: Axis.vertical,
          //             itemCount: snapshot.data!.length,
          //             itemBuilder: (context, index) {
          //               var karya = snapshot.data![index];
          //               var title = karya["title"];
          //               var banyakpengarang = karya["creators"].length;
          //               List listnamdep = [];
          //               List listnambek = [];
          //               for (int i = 0; i < banyakpengarang; i++) {
          //                 listnamdep.insert(
          //                     i, karya["creators"][i]["name"]["given"]);
          //                 listnambek.insert(
          //                     i, karya["creators"][i]["name"]["family"]);
          //               }
          //               var namdep = listnamdep[0];
          //               var nambel = listnambek[0];
          //               var date = karya["date"];
          //               var thesistype = karya["thesis_type"];
          //               var type = karya["type"];
          //               var institution = karya["institution"];

          //               return Column(
          //                 children: [
          //                   Divider(),
          //                   ListTile(
          //                     leading: Image.asset('assets/file.png'),
          //                     title: Text(title),
          //                     subtitle: Text(
          //                         '${nambel}, ${namdep} | ${date} | ${thesistype} ${type} | ${institution}'),
          //                     onTap: () {
          //                       Get.toNamed(Routes.KARYAILMIAH, arguments: karya);
          //                     },
          //                   ),
          //                 ],
          //               );
          //             },
          //           ),
          //         );
          //       } else {
          //         return Center(child: CircularProgressIndicator());
          //       }
          //     },
          //   ),
          // ),
          Container(
            height: MediaQuery.of(context).size.height * 0.77,
            child: Obx(() => DraggableScrollbar.rrect(
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

                      return Column(
                        children: [
                          Divider(),
                          ListTile(
                            leading: Image.asset('assets/file.png'),
                            title: Text(title),
                            subtitle: Text(
                                '${nambel}, ${namdep} | ${date} | ${thesistype} ${type} | ${institution}'),
                            onTap: () {
                              Get.toNamed(Routes.KARYAILMIAH, arguments: karya);
                            },
                          ),
                        ],
                      );
                    },
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
