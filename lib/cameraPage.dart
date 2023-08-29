import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
// import 'package:tflite_flutter/tflite_flutter.dart';
import 'package:tflite/tflite.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  File? _image;
  String _prediction = '';
  String _description = '';
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loadModel();
  }

  Future<void> _loadModel() async {
    await Tflite.loadModel(
      model: 'assets/my_model.tflite',
      labels: 'assets/labels.txt',
    );
  }

  // new way to load model and labels
  // Future<void> loadLabels() async {
  //   labels = await File
  // }

  Future<void> _chooseImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    setState(() {
      _image = File(pickedImage!.path);
    });
  }

  Future<void> _classifyImage() async {
    setState(() {
      _loading = true;
    });

    final appDir = await getApplicationDocumentsDirectory();
    final imageName = DateTime.now().toString();
    final imageFile = await _image!.copy('${appDir.path}/$imageName.jpg');

    final output = await Tflite.runModelOnImage(
      path: imageFile.path,
      numResults: 1,
      threshold: 0.3,
    );

    setState(() {
      _prediction = output![0]['label'];
      _description = getPredictionDescription(output[0]['label']);
      _loading = false;
    });
  }

  @override
  void dispose() {
    Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(5.0)),
              child: _image == null
                  ? const Center(
                      child: Text("Please select endek image."),
                    )
                  : Image.file(_image!),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => _chooseImage(ImageSource.camera),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  maximumSize: const Size(200, 100),
                  minimumSize: const Size(200, 60),
                  backgroundColor: const Color(0xffc07f00),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(Icons.add_a_photo), Text("Open Camera")]),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () => _chooseImage(ImageSource.gallery),
              style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  maximumSize: const Size(200, 100),
                  minimumSize: const Size(200, 60),
                  backgroundColor: const Color(0xffc07f00),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 20)),
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Icon(Icons.photo), Text("Open Gallery")]),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () async {
                  if (_image != null) {
                    await _classifyImage();
                    // ignore: use_build_context_synchronously
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PredictionPage(
                                prediction: _prediction,
                                detail: _description,
                                image: _image)));
                  }
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    maximumSize: const Size(200, 100),
                    minimumSize: const Size(200, 60),
                    backgroundColor: const Color(0xffc07f00),
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 20)),
                child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.android_outlined),
                      Text("Classify")
                    ])),
            const SizedBox(height: 30),
            _loading ? const CircularProgressIndicator() : Container()
          ],
        ),
      ),
    );
  }

  final Map<String, String> _classDescriptions = {
    'Endek Corak Cakra':
        'Cakra Kurung adalah sebuah desain yang diambil berdasarkan legenda dan sejarah Hindu dimana Tuhan dalam manifestasinya sebagai Dewa Wisnu yang menjelma ke dunia dalam wujud Awatara Wisnu yang bersenjatakan Cakra. Senjata ini berfungsi sebagai penjaga keseimbangan duni jagat raya ini dari malapetaka, bencana alam yang diebabkan oleh keserakahan dan kesombongan manusia sebagai mahluk ciptaan Tuhan. Sehingga dunia ini menjadi lestari dan seimbang sesuai dengan rotasi perputaran jagat raya dan alam semesta.',
    'Endek Corak Cemara':
        'Songket Motif Cemara merupakan songket yang ditenun menggunakan Alat Tenun Bukan Mesin yang menggunakan pewarna alam murni. Sama seperti beberapa kain lain yang menggunakan pewarna alam murni, kain ini juga menggunakan pewarna yang berasal dari tumbuh-tumbuhan. Cemara memberkan makna kekekalan, yang mana dapat dilihat bentuk dari pohon cemara akan cinderung sama.',
    'Endek Corak Cempaka':
        'Desain ini merupakan kombinasi dari desain bunga cempaka bali dan bintang. Cempaka bali biasa digunakan dalam acara pernikahan yang mana bunga ini dapat menggambarkan simbol dari Dewa Tri Murti dalam ajaran agama Hindu. Bintang melambangkan masyarakat Bali yang tersebar di daerah Bali.',
    'Endek Corak Cepuk':
        'Kain dengan corak cepuk biasanya digunakan sebagi kain untuk menutup peti jenazah. Corak Cepuk dapat dikenali dari motifnya yang warna-warni, corak ini berasal dari Nusa Penida.',
    'Endek Corak Lubeng':
        'Ada beberapa macam motif Lubeng, yaitu Lubeng Luhur yang berukuran paling panjang (tiga bunga berbentuk kalajengkin yang masih utuh), Lubeng Petang Dasa (satu bunga kalajengking utuh di tengah dan di pinggir hanya setengah), dan Lubeng Pat Likur (ukurannya terkecil). Motif klasik dari Wastra ini, bagus untuk gaun bawahan seperti rok, dan juga cocok untuk atasan seperti untuk pakaian resmi untuk ke kantor atau untuk kegiatan sosialita.',
    'Endek Corak Rangrang':
        'Motif Kain Tenun Rang Rang berasal dari warisan nenek moyang para pengrajinnya di daerah asli asalnya yaitu Nusa Penida, Bali. Sehingga motifnya berbeda dengan tenun-tenun hasil karya masyarakat Bali di kabupaten-kabupaten lain seperti dari Klungkung, Karangasem, Jembrana, Tabanan dan lainnya. Selain desain berlobang yang menjadi ciri khasnya itu, warnanya pun juga lebih cerah dari tenun lainnya. Kebanyakan warnanya didominasi oleh warna merah, orange dan ungu. Bahan warnanya bisa menggunakan bahan kimia atau bahan alami terbuat dari daun, buah dan akar-akaran tertentu. Penamaan Cepuk Rang-Rang ini memiliki arti jarang-jarang atau berlubang. Jarang-jarang maksudnya adalah karena motif antara warna yang satu dengan yang lain berjauhan. Sedangkan berlubang maksudnya adalah jumlah benang yang digunakan lebih sedikit sehingga terkesan lebih renggang atau jarang-jarang (bolong-bolong).',
    'Endek Corak Uang Kepeng':
        'Corak uang kepeng dibuat oleh pengrajin kain endek dengan menggabungkan tiga warna sekaligus yaitu warna ungu muda, kuning muda, dan juga bata muda. Corak uang kepeng merupakan salah satu motif endek yang kuno dan klasik.',
    'Unknown':
        'Mohon maaf gambar yang anda masukkan bukan endek atau motif endek yang anda masukkan belum ada pada database kami, mohon gunakan gambar yang berbeda.',
  };

  String getPredictionDescription(String prediction) {
    return _classDescriptions.containsKey(prediction)
        ? _classDescriptions[prediction]!
        : 'Unknown';
  }
}

class PredictionPage extends StatefulWidget {
  final String prediction, detail;
  final File? image;

  const PredictionPage(
      {super.key,
      required this.prediction,
      required this.detail,
      required this.image});

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  // late String prediction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.file(
              widget.image!,
              fit: BoxFit.cover,
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.2,
              minChildSize: 0.1,
              maxChildSize: 0.5,
              builder: (context, scrollController) => ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                    color: Colors.white70,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: Text(
                              "Prediction : ${widget.prediction}",
                              style: const TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              widget.detail,
                              textAlign: TextAlign.justify,
                              overflow: TextOverflow.fade,
                              // maxLines: 3,
                              style: const TextStyle(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
            )
          ],
        ));
  }
}
