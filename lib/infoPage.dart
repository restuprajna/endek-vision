import 'package:flutter/material.dart';

class MyInfoPage extends StatelessWidget {
  const MyInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.all(10),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 3 / 4,
      children: [
        InkWell(
          highlightColor: Colors.grey,
          hoverColor: Colors.green,
          customBorder: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          onTap: () {
            debugPrint("The grid is clicked");
          },
          child: Column(
            children: [
              Container(
                  alignment: Alignment.topCenter,
                  // height: 200,
                  padding: const EdgeInsets.all(8),
                  color: Colors.red,
                  child: Image.asset("assets/images/endek_cakra.jpeg")),
              Expanded(
                child: Container(
                    alignment: Alignment.center,
                    child: const Text("Endek Cakra")),
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    blurStyle: BlurStyle.normal)
              ],
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.grey.shade300),
          // color: Colors.red,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)),
                child: Image.asset("assets/images/endek_cakra.jpeg"),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: const Text("Encek Corak Cakra"),
              ))
            ],
          ),
        ),
        Container(
          color: Colors.red,
          child: const Text("test"),
        ),
        Container(
          color: Colors.red,
          child: const Text("test"),
        ),
        Container(
          color: Colors.red,
          child: const Text("test"),
        ),
        Container(
          color: Colors.red,
          child: const Text("test"),
        ),
      ],
    );

    // ListView(
    //   children: const [
    //     EndekList(
    //       endekName: "Endek Corak Cakra",
    //       endekImageName: "assets/images/endek_cakra.jpeg",
    //       endekDescription:
    //           "Cakra Kurung adalah sebuah desain yang diambil berdasarkan legenda dan sejarah Hindu dimana Tuhan dalam manifestasinya sebagai Dewa Wisnu yang menjelma ke dunia dalam wujud Awatara Wisnu yang bersenjatakan Cakra. Senjata ini berfungsi sebagai penjaga keseimbangan duni jagat raya ini dari malapetaka, bencana alam yang diebabkan oleh keserakahan dan kesombongan manusia sebagai mahluk ciptaan Tuhan. Sehingga dunia ini menjadi lestari dan seimbang sesuai dengan rotasi perputaran jagat raya dan alam semesta.",
    //     ),
    //     EndekList(
    //       endekName: "Endek Corak Cemara",
    //       endekImageName: "assets/images/endek_cemara.jpeg",
    //       endekDescription:
    //           "Songket Motif Cemara merupakan songket yang ditenun menggunakan Alat Tenun Bukan Mesin yang menggunakan pewarna alam murni. Sama seperti beberapa kain lain yang menggunakan pewarna alam murni, kain ini juga menggunakan pewarna yang berasal dari tumbuh-tumbuhan. Cemara memberkan makna kekekalan, yang mana dapat dilihat bentuk dari pohon cemara akan cinderung sama.",
    //     ),
    //     EndekList(
    //       endekName: "Endek Corak Cempaka",
    //       endekImageName: "assets/images/endek_cempaka.jpeg",
    //       endekDescription:
    //           "Desain ini merupakan kombinasi dari desain bunga cempaka bali dan bintang. Cempaka bali biasa digunakan dalam acara pernikahan yang mana bunga ini dapat menggambarkan simbol dari Dewa Tri Murti dalam ajaran agama Hindu. Bintang melambangkan masyarakat Bali yang tersebar di daerah Bali.",
    //     ),
    //     EndekList(
    //       endekName: "Endek Corak Cepuk",
    //       endekImageName: "assets/images/endek_cepuk.jpeg",
    //       endekDescription:
    //           "Kain dengan corak cepuk biasanya digunakan sebagi kain untuk menutup peti jenazah. Corak Cepuk dapat dikenali dari motifnya yang warna-warni, corak ini berasal dari Nusa Penida.",
    //     ),
    //     EndekList(
    //       endekName: "Endek Corak Lubeng",
    //       endekImageName: "assets/images/endek_lubeng.jpg",
    //       endekDescription:
    //           "Ada beberapa macam motif Lubeng, yaitu Lubeng Luhur yang berukuran paling panjang (tiga bunga berbentuk kalajengkin yang masih utuh), Lubeng Petang Dasa (satu bunga kalajengking utuh di tengah dan di pinggir hanya setengah), dan Lubeng Pat Likur (ukurannya terkecil). Motif klasik dari Wastra ini, bagus untuk gaun bawahan seperti rok, dan juga cocok untuk atasan seperti untuk pakaian resmi untuk ke kantor atau untuk kegiatan sosialita.",
    //     ),
    //     EndekList(
    //       endekName: "Endek Corak Rangrang",
    //       endekImageName: "assets/images/endek_rangrang.jpeg",
    //       endekDescription:
    //           "Motif Kain Tenun Rang Rang berasal dari warisan nenek moyang para pengrajinnya di daerah asli asalnya yaitu Nusa Penida, Bali. Sehingga motifnya berbeda dengan tenun-tenun hasil karya masyarakat Bali di kabupaten-kabupaten lain seperti dari Klungkung, Karangasem, Jembrana, Tabanan dan lainnya. Selain desain berlobang yang menjadi ciri khasnya itu, warnanya pun juga lebih cerah dari tenun lainnya. Kebanyakan warnanya didominasi oleh warna merah, orange dan ungu. Bahan warnanya bisa menggunakan bahan kimia atau bahan alami terbuat dari daun, buah dan akar-akaran tertentu. Penamaan Cepuk Rang-Rang ini memiliki arti jarang-jarang atau berlubang. Jarang-jarang maksudnya adalah karena motif antara warna yang satu dengan yang lain berjauhan. Sedangkan berlubang maksudnya adalah jumlah benang yang digunakan lebih sedikit sehingga terkesan lebih renggang atau jarang-jarang (bolong-bolong).",
    //     ),
    //     EndekList(
    //       endekName: "Endek Corak Uang Kepeng",
    //       endekImageName: "assets/images/endek_uangkepeng.jpeg",
    //       endekDescription:
    //           "Corak uang kepeng dibuat oleh pengrajin kain endek dengan menggabungkan tiga warna sekaligus yaitu warna ungu muda, kuning muda, dan juga bata muda. Corak uang kepeng merupakan salah satu motif endek yang kuno dan klasik.",
    //     ),
    //   ],
    // );
  }
}

class EndekList extends StatelessWidget {
  const EndekList({
    required this.endekName,
    required this.endekImageName,
    required this.endekDescription,
    super.key,
  });

  final String endekName;
  final String endekImageName;
  final String endekDescription;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      iconColor: Colors.brown,
      // leading: const Icon(Icons.info),
      title: Text(endekName),
      tileColor: Colors.grey.shade100,
      // textColor: Colors.black,
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Scaffold(
                      appBar: AppBar(
                        title: Text(endekName),
                      ),
                      body: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset(endekImageName),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                              child: Text(
                                endekDescription,
                                textAlign: TextAlign.justify,
                              ),
                            )
                          ],
                        ),
                      ),
                    )));
      },
    );
  }
}
