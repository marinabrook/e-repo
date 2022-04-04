import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/karyailmiah_controller.dart';

class KaryailmiahView extends GetView<KaryailmiahController> {
  @override
  Widget build(BuildContext context) {
    var karya = Get.arguments["karya"];
    var eprintid = karya["eprintid"];
    var title = karya["title"];
    var banyakpengarang = karya["creators"].length;
    List listnamdep = [];
    List listnambek = [];
    for (int i = 0; i < banyakpengarang; i++) {
      listnamdep.insert(i, karya["creators"][i]["name"]["given"]);
      listnambek.insert(i, karya["creators"][i]["name"]["family"]);
    }
    var date = karya["date"];
    var thesistype = karya["thesis_type"];
    var type = karya["type"];
    var institution = karya["institution"];
    var abstrak = karya["abstract"];
    var banyakdoc = karya["documents"].length;
    List listdoc = [];
    for (int i = 0; i < banyakdoc; i++) {
      listdoc.insert(i, karya["documents"][i]);
    }
    listdoc.sort((a, b) => a["placement"].compareTo(b["placement"]));
    var nomorinven = karya["note"];
    var keyword = karya["keywords"];
    var banyaksub = karya["subjects"].length;
    List listsub = [];
    for (int i = 0; i < banyaksub; i++) {
      listsub.insert(i, karya["subjects"][i]);
    }
    var datedep = karya["datestamp"];
    var datelas = karya["lastmod"];
    var uri = karya["uri"];
    return Scaffold(
      appBar: AppBar(
        title: Text('${Get.arguments["year"]}'),
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
              Get.offNamed(Routes.FAVORITE);
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
      drawerScrimColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: [
          Container(
            margin: EdgeInsets.only(left: 4),
            child: Text(
              '${Get.arguments["bred"]}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Builder(builder: (context) {
            if (banyakpengarang == 1) {
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Author: ${listnamdep[0]} ${listnambek[0]}",
                  style: TextStyle(
                    fontSize: 14.4,
                  ),
                ),
              );
            } else {
              return ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: listnamdep.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Author ${index + 1}: ${listnamdep[index]} ${listnambek[index]}",
                      style: TextStyle(
                        fontSize: 14.4,
                      ),
                    ),
                  );
                },
              );
            }
          }),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Date: ${date}",
              style: TextStyle(
                fontSize: 14.4,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Type: ${thesistype} ${type}",
              style: TextStyle(
                fontSize: 14.4,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 42,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Favorite",
                  style: TextStyle(
                    fontSize: 14.4,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Obx(() {
                  if (controller.isfavorited == false) {
                    return IconButton(
                      alignment: Alignment.center,
                      iconSize: 40,
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        controller.savetofavorite(karya);
                        controller.checkfav();
                        Get.snackbar(
                          "Success.",
                          "Successfully added this item to your favorites",
                          snackPosition: SnackPosition.TOP,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.07,
                            left: MediaQuery.of(context).size.width * 0.03,
                            right: MediaQuery.of(context).size.width * 0.03,
                          ),
                          duration: Duration(seconds: 2),
                          animationDuration: Duration(milliseconds: 500),
                        );
                      },
                      icon: Icon(
                        Icons.star_border,
                      ),
                    );
                  } else {
                    return IconButton(
                      alignment: Alignment.center,
                      iconSize: 40,
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Get.snackbar(
                          "Favorited.",
                          "This item has been added to your favorites",
                          snackPosition: SnackPosition.TOP,
                          margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.07,
                            left: MediaQuery.of(context).size.width * 0.03,
                            right: MediaQuery.of(context).size.width * 0.03,
                          ),
                          duration: Duration(seconds: 2),
                          animationDuration: Duration(milliseconds: 500),
                        );
                      },
                      icon: Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    );
                  }
                }),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Abstract",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              abstrak.toString(),
              style: TextStyle(
                fontSize: 14.4,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: listdoc.length,
            itemBuilder: (context, index) {
              if (listdoc[index]["security"] == "public" &&
                  listdoc[index]["format"] == "pdf") {
                return ListTile(
                  leading: Icon(Icons.picture_as_pdf),
                  title: Text('PDF (${listdoc[index]["formatdesc"]})'),
                  subtitle: Text(
                    listdoc[index]["main"].toString(),
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                  onTap: () async {
                    String link =
                        "https://repository.unsoed.ac.id/${eprintid}/${listdoc[index]["pos"]}/${listdoc[index]["main"]}";
                    if (await canLaunch(link)) {
                      await launch(link);
                    } else {
                      throw 'Could not launch $link';
                    }
                  },
                );
              } else if (listdoc[index]["security"] == "staffonly" &&
                  listdoc[index]["format"] == "pdf") {
                return ListTile(
                  leading: Icon(Icons.picture_as_pdf),
                  title: Text('PDF (${listdoc[index]["formatdesc"]})'),
                  subtitle: Text(
                    listdoc[index]["main"].toString(),
                    style: TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                  trailing: Text("Restricted to Staff Only"),
                );
              } else {
                return Container();
              }
            },
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Item Type: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Text(
                  "${thesistype} ${type}",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Nomor Inventaris: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Text(
                  nomorinven.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Uncontrolled Keywords: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Text(
                  keyword.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Date Deposited: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Text(
                  datedep.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Last Modified:	",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Text(
                  datelas.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "URI:	",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Linkify(
                  onOpen: (link) async {
                    if (await canLaunch(link.url)) {
                      await launch(link.url);
                    } else {
                      throw 'Could not launch $link';
                    }
                  },
                  options: LinkifyOptions(humanize: false),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                  text: uri.toString(),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Institution:	",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Flexible(
                child: Text(
                  institution.toString(),
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
