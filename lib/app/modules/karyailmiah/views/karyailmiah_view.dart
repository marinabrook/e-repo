import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/karyailmiah_controller.dart';

class KaryailmiahView extends GetView<KaryailmiahController> {
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
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        children: [
          Container(
            margin: EdgeInsets.only(left: 4),
            child: Text(
              'root > path directory',
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
              "Implementasi dan Analisis Optimasi Bandwidth dengan Queue Tree Menggunakan Algoritma HTB",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Author: Ilham Kurniawan",
              style: TextStyle(
                fontSize: 14.4,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Tahun: 2099",
              style: TextStyle(
                fontSize: 14.4,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Type: Skripsi Thesis",
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
              "Penelitian ini bertujuan untuk menganalisis bagaimana pengaruh pertumbuhan ekonomi, IPM, inflasi, serta pertumbuhan ekonomi sektoral terhadap kemiskinan di provinsi jawa tengah periode 2010-2017. Metode penelitian yang digunakan adalah dengan regresi data panel, untuk mengetahui bagaimana pengaruh dari masing-masing variabel tersebut dengan metode data panel serta analisis uji t. Hasil penelitian menunjukkan bahwa Pertumbuhan ekonomi berpengaruh negatif namun tidak signifikan, IPM berpengaruh negatif dan signifikan dan inflasi berpengaruh negatif dan signifikan. Sedangkan pertumbuhan ekonomi Sektor Primer berpengaruh positif tidak signifikan dan Sektor Sekunder berpengaruh negatif signifikan, Sektor Tersier berpengaruh negatif signifikan. Implikasi dari kesimpulan di atas adalah pertumbuhan ekonomi dapat menurunkan tingkat kemiskinan di Jawa Tengah, namun pada sektor primer pertumbuhan ekonomi ini malah menjadikan tingkat kemiskinan meningkat dikarenakan alih fungsi lahan pertanian menjadi industri hal ini perlunya campur tangan pemerintah dalam mengeluarkan kebijakan dalam hal perijinan, pada sektor sekunder dan tersier penyerapan tenaga kerja cukup baik dan meningkat disetiap tahunnya hal ini berarti perlunya peningkatan IPM daya saing masyarakat dalam peningkatan sumber daya manusia untuk dapat menambah skill sehingga dapat bersaing dalam penyerapan tenaga kerja. Tingkat inflasi pada penelitian ini memberikan dampak negatif terhadap kemiskinan, hal ini menunjukan bahwa inflasi tidak selalu berdampak buruk pada setiap keadaan, karena pada saat permintaan barang dan jasa naik maka akan dapat menyerap tenaga kerja yang lebih banyak sehingga dapat meningkatkan pendapatan masyarakat.",
              style: TextStyle(
                fontSize: 14.4,
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Cover)'),
            subtitle: Text('COVER-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () async {
              String link = "https://repository.unsoed.ac.id/14223/21/COVER-Falih Abdurrahman-F1B017070-Skripsi-2022.pdf";
              if (await canLaunch(link)) {
                await launch(link);
              } else {
                throw 'Could not launch $link';
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Legalitas)'),
            subtitle: Text('LEGALITAS-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () async {
              String link = "";
              if (await canLaunch(link)) {
                await launch(link);
              } else {
                throw 'Could not launch $link';
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Abstrak)'),
            subtitle: Text('Abstrak-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () async {
              String link = "";
              if (await canLaunch(link)) {
                await launch(link);
              } else {
                throw 'Could not launch $link';
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Bab I)'),
            subtitle: Text('BAB-I-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Bab II)'),
            subtitle: Text('BAB-II-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Bab III)'),
            subtitle: Text('BAB-III-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Bab IV)'),
            subtitle: Text('BAB-IV-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Bab V)'),
            subtitle: Text('BAB-V-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Daftar Pustaka)'),
            subtitle: Text('DAFTAR-PUSTAKA-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.picture_as_pdf),
            title: Text('PDF (Lampiran)'),
            subtitle: Text('LAMPIRAN-Ilham-C2A017008-TESIS-2019-PDF.pdf'),
            onTap: () {},
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Item Type: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Skripsi Thesis",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Nomor Inventaris: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "P20067",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Uncontrolled Keywords: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Pertumbuhan ekonomi, IPM, Inflasi, Sektor Primer, Sektor Sekunder,",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Subjects: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "P > P461 Poverty",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Divisions:	",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Program Pascasarjana > S2 Ilmu Ekonomi",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Depositing User: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Mrs Yayuk Khotiarsih",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Date Deposited: ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "10 Feb 2022 08:08",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Last Modified:	",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "10 Feb 2022 08:08",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "URI:	",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "http://repository.unsoed.ac.id/id/eprint/14290",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
