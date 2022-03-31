import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
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
              Get.back();
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
      drawerScrimColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              'Helpdesk',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Korespondensi mengenai repository silahkan hubungi melalui instagram kami @perpustakaan.unsoed",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
