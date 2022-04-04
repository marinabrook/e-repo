import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:get/get.dart';
import 'package:repository_mobile_unsoed/app/routes/app_pages.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/faq_controller.dart';

class FaqView extends GetView<FaqController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
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
              Get.back();
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
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Frequently Asked Questions",
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
              "Bagaimana cara membuat akun unggah mandiri?",
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
              "1. Pastikan anda sudah mengunduh dan mengisi Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis, lalu scanning BERWARNA lembar tersebut.\n2. Buka halaman login GMAIL lalu login ke GMAIL dengan Menggunakan akun TIK Mahasiswa Unsoed.\n3. Buka dan isi formulir pembuatan akun unggah mandiri, serta unggah Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis\n4. Akun unggah mandiri akan dikirimkan ke email ….@mhs.unsoed.ac.id setelah Admin melakukan validasi.",
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
              "Pastikan anda mengisi form pengajuan akun unggah mandiri dengan benar. Anda akan diminta merevisi pengajuan akun unggah mandiri jika,",
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
              "1. File Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis tidak berwarna dan tidak bermaterai\n2. Format Lembar Pernyataan Persetujuan Publikasi Karya Ilmiah Untuk Kepentingan Akademis tidak sama dengan format yang kami sediakan (http://perpus.unsoed.ac.id/downloads)",
              style: TextStyle(
                fontSize: 16,
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
              "Bagaimana jika akun TIK saya tidak dapat login ke Gmail?",
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
                  "Untuk panduan aktivasi identitas TIK informasi lebih lanjut silahkan buka laman https://akademik.unsoed.ac.id/ atau kunjungi https://lptsi.unsoed.ac.id/content/panduan-aktivasi-identitas-tik-unsoed-bagi-mahasiswa. Hubungi kami melalui helpdesk Instagram : @perpustakaan.unsoed jika akun TIK tetap tidak dapat digunakan untuk login ke Gmail",
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
              "Berapa lama mendapatkan akun unggah mandiri?",
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
              "Setelah semua data dinyatakan benar proses pembuatan akun rata-rata membuthkan waktu +/- 15 menit pada jam kerja dengan mempertimbangan daftar antrian pembuatan akun. Dalam keadaan tertentu tim akun akan membuat dan mengirimkan akun diluar jam kerja. Proses pembuatan akun anda akan melalui tahap verifikasi terlebih dahulu untuk memastikan semua inputan benar",
              style: TextStyle(
                fontSize: 16,
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
              "Bagaimana jika file melebihi dari 1mb?",
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
              "Pastikan jaringan internet anda stabil ketika anda akan mengupload file. Gunakan jaringan kampus UNSOED untuk upload file lebih dari 1mb, atau lakukan resize file dengan tetap mempertimbangkan kualitas pdf, keterbacaan redaksi text dan gambar yang ada pada skripsi.",
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
              "Jika anda berada diluar kota atau mengalami kesulitan upload file silahkan hubungi helpdesk kami melaui Instagram : @perpustakaan.unsoed",
              style: TextStyle(
                fontSize: 16,
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
              "File Legalitas yang sesuai ketentuan itu seperti apa?",
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
            child: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 14.4, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: "File legalitas berisikan "),
                    TextSpan(
                        text: "Halaman Pengesahan",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ", Motto, Persembahan, Kata Pengantar, Daftar Isi Daftar Tabel, Daftar Gambar, "),
                    TextSpan(
                        text: "Halaman Pernyataan Orisinalitas",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text:
                            ". (Lihat Panduan Unggah Mandiri pada KETENTUAN FILE halaman 4 dan 5.)"),
                  ]),
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
                  style: TextStyle(fontSize: 14.4, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(text: "Halaman yang harus dipindai/"),
                    TextSpan(
                        text: "scanning ",
                        style: TextStyle(fontStyle: FontStyle.italic)),
                    TextSpan(text: "meliputi "),
                    TextSpan(
                        text: "Halaman Pengesahan dan Pernyataan Orisinalitas ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "dengan ketentuan:"),
                  ]),
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
              "1. Hasil scanning berwarna\n2. Halaman Pengesahan telah ditandatangani dan berstempel serta dipindai Tanda tangan dan stempel harus asli bukan hasil cropping/editing\n3. Halaman Pernyataan Orisinalitas (jika ada) telah dibubuhi tanda tangan dan materai yang dipindai berwarna. Tanda tangan dan materai harus asli bukan hasil cropping/editing\n4. Hindari penggunaan kamera smarthphone untuk memindai/scanning, gunakanlah alat pindai scanner guna menjamin kualitas hasil scanning",
              style: TextStyle(
                fontSize: 16,
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
              "Setelah deposit item berapa lama saya mendapatkan bukti unggah mandiri?",
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
              "Setelah deposit item tim akan mereview unggahan mandiri, proses review sangat bergantung pada kebenaran dalam menginput, serta antrian untuk di review. Rata-rata waktu yang dibutuhkan untuk review 1 unggahan mandiri +/- 5 menit. Setelah dinyatakan benar oleh editor maka sistem akan mengirimkan bukti unggah mandiri melalui email @mhs.unsoed.ac.id. Proses review oleh tim dilakukan pada saat jam kerja dan dalam keadaan tertentu tim review akan melakukan review unggahan mandiri diluar jam kerja",
              style: TextStyle(
                fontSize: 16,
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
              "Setelah unggah mandiri belum mendapatkan bukti unggah mandiri",
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
              "Pastikan selalu mengecek SPAM / INBOK email ….@mhs.unsoed.ac.id karena proses pengiriman bukti unggah mandiri dan permintaan untuk merevisi unggah mandiri melalui email Untuk kasus tertentu bukti unggah mandiri masuk ke SPAM.",
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
