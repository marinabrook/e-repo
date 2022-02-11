import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';

import '../controllers/listkaryailmiah_controller.dart';

class ListkaryailmiahView extends GetView<ListkaryailmiahController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('path directory'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_outlined))
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
              'root > path directory',
              style: TextStyle(fontSize: 16,),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.84,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Divider(),
                    ListTile(
                      leading: Image.asset('assets/file.png'),
                      title: Text('Implementasi dan Analisis Optimasi Bandwidth dengan Queue Tree Menggunakan Algoritma HTB'),
                      subtitle: Text('Ilham Surya | T : 2099 | Skripsi Thesis | Universitas Jenderal Soedirman'),
                      onTap: (){
                        Get.toNamed(Routes.KARYAILMIAH);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
