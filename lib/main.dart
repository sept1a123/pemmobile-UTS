import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi_detail.dart';
import 'prodi.dart';
import 'profil.dart';
import 'profil_detail.dart';

void main() {
  runApp(const FakultasApp());
}

class FakultasApp extends StatelessWidget {
  const FakultasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Fakultas Pertanian',
      theme: ThemeData(
        fontFamily: 'poppins',
      ),
      home: const HomeProfilFakultas(),
    );
  }
}

Future<void> LaunchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceSafariVC: false, forceWebView: false);
  } else {
    throw 'Could not launch $url';
  }
}

class HomeProfilFakultas extends StatelessWidget {
  const HomeProfilFakultas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 88, 213, 117),
        title: Row(
          children: [
            Image.asset(
              'assets/Logofaperta.png',
              width: 100,
              height: 100,
            ),
            Expanded(
              child: Center(
                child: Text(
                  'FAKULTAS PERTANIAN UPNVJT',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(width: 88),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 76, 175, 80).withOpacity(
                    0.1), // Set background color to green with opacity
                borderRadius: BorderRadius.circular(
                    10.0), // Add border radius for rounded corners
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 10.0),
                  Image.asset(
                    'assets/BG_Fakultas.jpg',
                    height: 200.0,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            CurvedDivider(),
            // Deskripsi Fakultas Ilmu Komputer
            buildDescriptionSection(
              title: 'Fakultas Pertanian',
              dekanPhoto: 'assets/dekanFaperta-removebg.png',
              description:
                  'Fakultas Pertanian saat ini  memiliki 2 program studi jenjang S-1, yaitu Agroteknologi dan Agribisnis, 2 program studi jenjang S-2 yaitu Magister Agribisnis dan Magister Agroteknologi, serta satu program studi S-3 yaitu program Doktor Agribisnis. Tahun 2015 sudah diusulkan ke Kementerian Riset Teknologi dan Pendidikan Tinggi untuk program Master (S2) Agroteknologi dan program Doktor (S3) Ilmu Pertanian. Berkat kerja keras dalam menjaga kualitas SDM, proses manajemen dan lulusannya, program studi S-1 mendapatkan akreditasi A / unggul. Program studi S-2 Agribisnis mendapatkan akreditasi A / unggul, S-2 Agroteknologi dan S-3 Agribisnis mendapatkan akreditasi baik dari BANPT-DIKTI.',
              website: 'https://faperta.upnjatim.ac.id/',
              dekan: 'Dr. Ir. Wanti Mindari, M.P.',
              visi:
                  'Terwujudnya fakultas yang unggul dalam pengembangan IPTEKS pertanian dan kewirausahaan, berjejaring global serta berkarakter bela negara',
              misi:
                  '1. Menyelenggarakan pendidikan berkualitas dengan pemanfaatan hasil penelitian dan berkarakter bela negara\n'
                  '2. Menyelenggarakan penelitian strategis dan berkesinambungan untuk mengembangkan IPTEKS pertanian\n'
                  '3. Menyelenggarakan pengabdian kepada masyarakat melalui penerapan teknologi tepat guna berbasis kearifan lokal\n'
                  '4. Menyelenggarakan tata kelola Fakultas yang baik dan bersih\n'
                  '5. Mengembangkan kualitas sumber daya manusia berkarakter bela negara\n'
                  '6. Meningkatkan sistem pengelolaan sarana dan prasarana terpadu di tingkat Fakultas\n'
                  '7. Meningkatkan kerjasama institusional dalam dan luar negeri melalui keunggulan Litdimas',
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Program Studi',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            // List Program Studi
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ProdiData.prodiList.length,
              itemBuilder: (context, index) {
                final programStudi = ProdiData.prodiList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeProdiDetail(
                          programStudi: programStudi,
                        ),
                      ),
                    );
                  },
                  child: buildProdiCard(programStudi),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Profil Pembuat Aplikasi',
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            // List Profil Pembuat Aplikasi
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: ProfilData.profilList.length,
              itemBuilder: (context, index) {
                final profile = ProfilData.profilList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePersonalProfile(
                          profile: profile,
                        ),
                      ),
                    );
                  },
                  child: buildProfileCard(profile),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDescriptionSection({
    required String title,
    required String description,
    required String website,
    required String dekan,
    required String dekanPhoto,
    required String visi,
    required String misi,
  }) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1.0),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 76, 175, 80),
                Color.fromARGB(255, 76, 175, 80)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 1.2,
                ),
              ),
              const SizedBox(height: 20.0),
              Center(
                // Center the dean's photo and name
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.0),
                      child: Image.asset(
                        dekanPhoto,
                        width: 200, // Adjust size as needed
                        height: 200, // Adjust size as needed
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Text(
                      '$dekan',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        fontSize: 16.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                description,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                'Visi:\n$visi',
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12.0),
              Text(
                'Misi:\n$misi',
                textAlign: TextAlign.left,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16.0,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () => LaunchURL(website),
                    icon: Icon(Icons.public), // Icon untuk website
                    label: Text('Website Faperta'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue), // Warna latar belakang tombol
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Warna teks di atas tombol
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      launch('mailto:faperta@upnjatim.ac.id');
                    },
                    icon: Icon(Icons.email), // Icon untuk email
                    label: Text('Email Faperta'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.blue), // Warna latar belakang tombol
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Warna teks di atas tombol
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  Widget buildProdiCard(ProgramStudi programStudi) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
              colors: [Colors.green, Colors.lightGreenAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    programStudi.icon,
                    width: 70,
                    height: 70,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    programStudi.nama,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildProfileCard(PersonalProfile profile) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Card(
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: const LinearGradient(
              colors: [
                Color.fromARGB(255, 165, 170, 178),
                Color.fromARGB(255, 165, 170, 178)
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: Image.asset(
                    profile.fotoprofil,
                    width: 70,
                    height: 70,
                  ),
                ),
                const SizedBox(width: 16.0),
                Expanded(
                  child: Text(
                    profile.nama,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CurvedDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BottomClipper(),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 76, 175, 80),
              Color.fromARGB(255, 76, 175, 80)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, 40);
    path.quadraticBezierTo(size.width / 2, 0, size.width, 40);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
