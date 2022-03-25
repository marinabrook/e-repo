import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/petunjuk_controller.dart';

class PetunjukView extends GetView<PetunjukController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Petunjuk Unggah Mandiri'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
                Get.back();
              },
              icon: Icon(Icons.arrow_back))
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
              Get.offNamed(Routes.ABOUT);
            },
            leading: Icon(Icons.person_sharp),
            title: Text('About'),
          ),
          ListTile(
            onTap: () {
              Get.back();
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
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "KETENTUAN UMUM UNGGAH MANDIRI",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "A.   Karya Ilmiah Mahasiswa (Skripsi, Thesis, Disertasi)",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
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
              "Berikut ini tahap membuat akun unggah mandiri pada halaman 7 dan 8 Panduan Unggah Mandiri",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "1. Mahasiswa UNSOED Aktif\n2. Karya Ilmiah telah disetujui oleh Pembimbing dan Penguji sehingga pada halaman Pengesahan Skripsi sudah dibubuhkan tanda tangan dan stempel.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
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
                fontSize: 14.4,
              ),
              text:
                  "3. Memiliki identitas Teknologi Informasi dan Komunikasi (TIK) mahasiswa unsoed yang akan digunakan untuk membuat akun Unggah mandiri (informasi lebih lanjut mengenai Identitas TIK Mahsiswa silahkan buka laman https://akademik.unsoed.ac.id/  atau panduan aktivasi identitas TIK melalui link https://lptsi.unsoed.ac.id/content/panduan-aktivasi-identitas-tik-unsoed-bagi-mahasiswa )",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "4. Tidak memiliki pinjaman / denda di UPT Perpustakaan UNSOED",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
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
                fontSize: 14.4,
              ),
              text:
                  "5. Telah mengisi dan menandatangani Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis bermaterai 6000. Lembar Pernyataan ini di scanning dalam bentuk PDF berwarna dan diunggah bersamaan dengan pembuatan Akun Unggah mandiri. (Lembar tersebut dapat diunduh melalui laman website http://perpus.unsoed.ac.id/downloads/ )",
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Unduh Panduan Unggah Mandiri Karya Ilmiah Mahasiswa Versi 4 2022 ',
                      style: TextStyle(fontSize: 14.4, color: Colors.black)),
                  TextSpan(
                    text: 'KLIK DISINI',
                    style: TextStyle(
                        fontSize: 14.4,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        String link =
                            "https://drive.google.com/file/d/1VO_-mOLco23KImuZncwEhlzVfTSKtvGr/view?usp=sharing";
                        if (await canLaunch(link)) {
                          await launch(link);
                        } else {
                          throw 'Could not launch $link';
                        }
                      },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Video Tutorial Unggah Mandiri",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 60),
              alignment: Alignment.center,
              height: 200,
              width: 400,
              child: InkWell(
                  onTap: () async {
                    String link =
                        "https://youtu.be/KqJUhIqoXpM";
                    if (await canLaunch(link)) {
                      await launch(link);
                    } else {
                      throw 'Could not launch $link';
                    }
                  },
                  child: Image.asset('assets/thumvid.png'))),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Tahapan Pembuatan Akun Unggah Mandiri",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
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
                fontSize: 14.4,
              ),
              text:
                  "1. Mengunduh dan mengisi Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis, melalui link http://perpus.unsoed.ac.id/downloads/",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
            child: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 14.4, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            "2. Scaning/pindai Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis yang telah anda isi dalam "),
                    TextSpan(
                        text: "bentuk PDF berwarna.",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "3. Buka halaman login GMAIL lalu login ke GMAIL dengan Menggunakan akun TIK Mahasiswa Unsoed.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
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
                fontSize: 14.4,
              ),
              text:
                  "4. Bila anda belum memiliki akun TIK Mahasiswa Unsoed atau Akun TIK belum tersinkronisasi dengan GMAIL silahkan kunjungi url https://lptsi.unsoed.ac.id/content/panduan-aktivasi-identitas-tik-unsoed-bagi-mahasiswa . atau https://akademik.unsoed.ac.id/",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
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
                fontSize: 14.4,
              ),
              text:
                  "5. Buka formulir pembuatan akun unggah mandiri melalui url https://forms.gle/PeQ19yjSASWkK2kRA",
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "6. Isilah formulir pembuatan akun unggah mandiri, serta unggah Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis bermaterai 6000.\n7. Akun unggah mandiri akan dikirimkan ke email ….@mhs.unsoed.ac.id setelah Admin melakukan validasi terhadap registrasi pembuatan akun unggah mandiri.",
              style: TextStyle(
                fontSize: 16,
              ),
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
              "Anda akan diminta merevisi pengajuan akun unggah mandiri jika,",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "1. File Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis tidak berwarna dan tidak bermaterai",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
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
                fontSize: 14.4,
              ),
              text:
                  "2. Format Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis tidak sama dengan format yang kami sediakan (http://perpus.unsoed.ac.id/downloads )",
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Buat Akun Unggah Mandiri Karya Ilmiah Mahasiswa (pastikan anda sudah login ke Gmail menggunakan akun TIK mahasiswa ..........@mhs.unsoed.ac.id) ',
                      style: TextStyle(fontSize: 14.4, color: Colors.black)),
                  TextSpan(
                    text: 'KLIK DISINI',
                    style: TextStyle(
                        fontSize: 14.4,
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        String link = "https://forms.gle/jWapogTmdCtSxESs5";
                        if (await canLaunch(link)) {
                          await launch(link);
                        } else {
                          throw 'Could not launch $link';
                        }
                      },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "B.  Artikel Ilmiah Dosen/Karyawan",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "1. Dosen atau Karyawan Universitas Jenderal Soedirman\n2. Memiliki akun email unsoed (.........@unsoed.ac.id)\n3. Pastikan file Karya Ilmiah sudah diberi watermark dan sesuai dengan ketentuan file unggah mandiri.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Unduh Panduan Unggah Mandiri Artikel Ilmiah Dosen/Karyawan ',
                      style: TextStyle(fontSize: 14.4, color: Colors.black)),
                  TextSpan(
                    text: 'KLIK DISINI',
                    style: TextStyle(
                        fontSize: 14.4,
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        String link = "";
                        if (await canLaunch(link)) {
                          await launch(link);
                        } else {
                          throw 'Could not launch $link';
                        }
                      },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.04),
            width: MediaQuery.of(context).size.width,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text:
                          'Buat Akun Unggah Mandiri Artikel Ilmiah Dosen/Karyawan ',
                      style: TextStyle(fontSize: 14.4, color: Colors.black)),
                  TextSpan(
                    text: 'KLIK DISINI',
                    style: TextStyle(
                        fontSize: 14.4,
                        color: Colors.black,
                        decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () async {
                        String link = "";
                        if (await canLaunch(link)) {
                          await launch(link);
                        } else {
                          throw 'Could not launch $link';
                        }
                      },
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Hubungi kami di Instagram : @perpustakaan.unsoed ",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
