import 'package:flutter/material.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          iconColor: Colors.brown,
          // leading: const Icon(Icons.info),
          title: const Text("Endek Corak Cakra"),
          tileColor: Colors.grey.shade100,
          // textColor: Colors.black,
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EndekInfoCakra()));
          },
        ),
        ListTile(
          iconColor: Colors.brown,
          // leading: const Icon(Icons.info),
          title: const Text("Endek Corak Cemara"),
          tileColor: Colors.grey.shade100,
          // textColor: Colors.black,
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EndekInfoCemara()));
          },
        ),
        ListTile(
          iconColor: Colors.brown,
          // leading: const Icon(Icons.info),
          title: const Text("Endek Corak Cempaka"),
          tileColor: Colors.grey.shade100,
          // textColor: Colors.black,
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EndekInfoCempaka()));
          },
        ),
        ListTile(
          iconColor: Colors.brown,
          // leading: const Icon(Icons.info),
          title: const Text("Endek Corak Cepuk"),
          tileColor: Colors.grey.shade100,
          // textColor: Colors.black,
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EndekInfoCepuk()));
          },
        ),
        ListTile(
          iconColor: Colors.brown,
          // leading: const Icon(Icons.info),
          title: const Text("Endek Corak Lubeng"),
          tileColor: Colors.grey.shade100,
          // textColor: Colors.black,
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EndekInfoLubeng()));
          },
        ),
        ListTile(
          iconColor: Colors.brown,
          // leading: const Icon(Icons.info),
          title: const Text("Endek Corak Rangrang"),
          tileColor: Colors.grey.shade100,
          // textColor: Colors.black,
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EndekInfoRangrang()));
          },
        ),
        ListTile(
          iconColor: Colors.brown,
          // leading: const Icon(Icons.info),
          title: const Text("Endek Corak Uang Kepeng"),
          tileColor: Colors.grey.shade100,
          // textColor: Colors.black,
          trailing: const Icon(Icons.chevron_right),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const EndekInfoUangKepeng()));
          },
        ),
      ],
    );
  }
}

// class Endek {
//   static List<String> names = ["Endek Corak Cempaka", "Endek Corak Lubeng"];
// }

class EndekInfoCakra extends StatelessWidget {
  const EndekInfoCakra({super.key});

  // final fakerFa = Faker(provider: FakerDataProviderFa());
  // final String detail = faker.lorem.word();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Endek Corak Cakra")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // color: Colors.blue,
                  child: Image.asset('assets/images/endek_cakra.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.red,
                child: const Text(
                    textAlign: TextAlign.justify,
                    "Cakra Kurung adalah sebuah desain yang diambil berdasarkan legenda dan sejarah Hindu dimana Tuhan dalam manifestasinya sebagai Dewa Wisnu yang menjelma ke dunia dalam wujud Awatara Wisnu yang bersenjatakan Cakra. Senjata ini berfungsi sebagai penjaga keseimbangan duni jagat raya ini dari malapetaka, bencana alam yang diebabkan oleh keserakahan dan kesombongan manusia sebagai mahluk ciptaan Tuhan. Sehingga dunia ini menjadi lestari dan seimbang sesuai dengan rotasi perputaran jagat raya dan alam semesta."),
              )
            ],
          ),
        ));
  }

  // addStringToSF() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString('Endek Corak Cempaka', "detail endek bla bla");
  // }
}

class EndekInfoCemara extends StatelessWidget {
  const EndekInfoCemara({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Endek Corak Cemara")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // color: Colors.blue,
                  child: Image.asset('assets/images/endek_cemara.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.red,
                child: const Text(
                    textAlign: TextAlign.justify,
                    "Songket Motif Cemara merupakan songket yang ditenun menggunakan Alat Tenun Bukan Mesin yang menggunakan pewarna alam murni. Sama seperti beberapa kain lain yang menggunakan pewarna alam murni, kain ini juga menggunakan pewarna yang berasal dari tumbuh-tumbuhan. Cemara memberkan makna kekekalan, yang mana dapat dilihat bentuk dari pohon cemara akan cinderung sama."),
              )
            ],
          ),
        ));
  }
}

class EndekInfoCempaka extends StatelessWidget {
  const EndekInfoCempaka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Endek Corak Cempaka")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // color: Colors.blue,
                  child: Image.asset('assets/images/endek_cempaka.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.red,
                child: const Text(
                    textAlign: TextAlign.justify,
                    "Desain ini merupakan kombinasi dari desain bunga cempaka bali dan bintang. Cempaka bali biasa digunakan dalam acara pernikahan yang mana bunga ini dapat menggambarkan simbol dari Dewa Tri Murti dalam ajaran agama Hindu. Bintang melambangkan masyarakat Bali yang tersebar di daerah Bali."),
              )
            ],
          ),
        ));
  }
}

class EndekInfoCepuk extends StatelessWidget {
  const EndekInfoCepuk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Endek Corak Cepuk")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // color: Colors.blue,
                  child: Image.asset('assets/images/endek_cepuk.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.red,
                child: const Text(
                    textAlign: TextAlign.justify,
                    "Kain dengan corak cepuk biasanya digunakan sebagi kain untuk menutup peti jenazah. Corak Cepuk dapat dikenali dari motifnya yang warna-warni, corak ini berasal dari Nusa Penida."),
              )
            ],
          ),
        ));
  }
}

class EndekInfoLubeng extends StatelessWidget {
  const EndekInfoLubeng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Endek Corak Lubeng")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // color: Colors.blue,
                  child: Image.asset('assets/images/endek_lubeng.jpg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.red,
                child: const Text(
                    textAlign: TextAlign.justify,
                    "Ada beberapa macam motif Lubeng, yaitu Lubeng Luhur yang berukuran paling panjang (tiga bunga berbentuk kalajengkin yang masih utuh), Lubeng Petang Dasa (satu bunga kalajengking utuh di tengah dan di pinggir hanya setengah), dan Lubeng Pat Likur (ukurannya terkecil). Motif klasik dari Wastra ini, bagus untuk gaun bawahan seperti rok, dan juga cocok untuk atasan seperti untuk pakaian resmi untuk ke kantor atau untuk kegiatan sosialita."),
              )
            ],
          ),
        ));
  }
}

class EndekInfoRangrang extends StatelessWidget {
  const EndekInfoRangrang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Endek Corak Rangrang")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // color: Colors.blue,
                  child: Image.asset('assets/images/endek_rangrang.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.red,
                child: const Text(
                    textAlign: TextAlign.justify,
                    "Motif Kain Tenun Rang Rang berasal dari warisan nenek moyang para pengrajinnya di daerah asli asalnya yaitu Nusa Penida, Bali. Sehingga motifnya berbeda dengan tenun-tenun hasil karya masyarakat Bali di kabupaten-kabupaten lain seperti dari Klungkung, Karangasem, Jembrana, Tabanan dan lainnya. Selain desain berlobang yang menjadi ciri khasnya itu, warnanya pun juga lebih cerah dari tenun lainnya. Kebanyakan warnanya didominasi oleh warna merah, orange dan ungu. Bahan warnanya bisa menggunakan bahan kimia atau bahan alami terbuat dari daun, buah dan akar-akaran tertentu. Penamaan Cepuk Rang-Rang ini memiliki arti jarang-jarang atau berlubang. Jarang-jarang maksudnya adalah karena motif antara warna yang satu dengan yang lain berjauhan. Sedangkan berlubang maksudnya adalah jumlah benang yang digunakan lebih sedikit sehingga terkesan lebih renggang atau jarang-jarang (bolong-bolong)."),
              )
            ],
          ),
        ));
  }
}

class EndekInfoUangKepeng extends StatelessWidget {
  const EndekInfoUangKepeng({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Endek Corak Uang Kepeng")),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  // color: Colors.blue,
                  child: Image.asset('assets/images/endek_uangkepeng.jpeg'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                // color: Colors.red,
                child: const Text(
                    textAlign: TextAlign.justify,
                    "Corak uang kepeng dibuat oleh pengrajin kain endek dengan menggabungkan tiga warna sekaligus yaitu warna ungu muda, kuning muda, dan juga bata muda. Corak uang kepeng merupakan salah satu motif endek yang kuno dan klasik."),
              )
            ],
          ),
        ));
  }
}
