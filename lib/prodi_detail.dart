import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'prodi.dart';

Future<void> _launchWebsite(String url) async {
  try {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  } catch (e) {
    print('Error launching website: $e');
  }
}

Future<void> _launchEmail(String email) async {
  final Uri _emailLaunchUri = Uri(
    scheme: 'mailto',
    path: email,
  );

  try {
    if (await canLaunch(_emailLaunchUri.toString())) {
      await launch(_emailLaunchUri.toString());
    } else {
      print('Could not launch email');
    }
  } catch (e) {
    print('Error launching email: $e');
  }
}

class HomeProdiDetail extends StatelessWidget {
  final ProgramStudi programStudi;

  const HomeProdiDetail({Key? key, required this.programStudi})
      : super(key: key);

  Widget _buildDosenList() {
    List<Widget> dosenWidgets = [];

    for (int i = 0; i < programStudi.dosenImages.length; i++) {
      dosenWidgets.add(
        Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(programStudi.dosenImages[i]),
              radius: 30.0,
            ),
            SizedBox(height: 5.0),
            Text(
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'Poppins',
              ),
              programStudi.dosenNames[i],
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }
    return GridView.count(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 3,
      crossAxisSpacing: 20.0,
      mainAxisSpacing: 20.0,
      children: dosenWidgets,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          programStudi.nama,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 88, 213, 117),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 76, 175, 80),
              Color.fromARGB(255, 76, 175, 80),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.zero,
                    child: Image.asset(
                      programStudi.icon,
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
              ),
              Text(
                'Deskripsi Singkat Prodi ${programStudi.nama}:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 16),
              Text(
                programStudi.deskripsi,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Visi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 2),
              Text(
                programStudi.visi,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 12),
              Text(
                'Misi:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 12),
              ListView.builder(
                shrinkWrap: true,
                itemCount: programStudi.misi.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      ' ${programStudi.misi[index]}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 12),
              Text(
                'Akreditasi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 2),
              Text(
                programStudi.akreditasi,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Ketua Program Studi:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              Image.asset(
                programStudi.ketuaLogo,
                height: 100.0,
                width: 100.0,
              ),
              SizedBox(height: 2),
              Text(
                programStudi.ketuaProdi,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Dosen:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              _buildDosenList(),
              SizedBox(height: 20.0),
              Text(
                'Prestasi Mahasiswa Program Studi:',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Popins',
                ),
              ),

              SizedBox(height: 10.0),
              // Display achievement images and descriptions
              Column(
                children: List.generate(
                  programStudi.prestasiMahasiswa.length,
                  (index) => Column(
                    children: [
                      Image.asset(
                        programStudi.prestasiMahasiswa[index],
                        height: 200.0,
                        width: 200.0,
                      ),
                      SizedBox(height: 5.0),
                      Text(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                          ),
                          programStudi.prestasiMahasiswaDeskripsi[index]),
                      SizedBox(height: 10.0),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 12.0),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                ElevatedButton.icon(
                  onPressed: () => _launchWebsite(programStudi.website),
                  icon: Icon(Icons.public), // Icon untuk website
                  label: Text('Website Resmi Prodi'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), // Warna latar belakang tombol
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Warna teks di atas tombol
                  ),
                ),
                const SizedBox(width: 8.0),
                ElevatedButton.icon(
                  onPressed: () => _launchEmail(programStudi.email),
                  icon: Icon(Icons.email), // Icon untuk email
                  label: Text('Email Resmi Prodi'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.blue), // Warna latar belakang tombol
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.white), // Warna teks di atas tombol
                  ),
                ),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
