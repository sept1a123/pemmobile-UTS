import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'profil.dart';

Future<void> _launchgitHub(String url) async {
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

class HomePersonalProfile extends StatelessWidget {
  final PersonalProfile profile;

  const HomePersonalProfile({Key? key, required this.profile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          profile.nama,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 173, 183, 191),
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.grey.shade600,
              Colors.lightBlueAccent.shade400,
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(profile.fotoprofil),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Profil:',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(height: 16),
              _buildProfileInfo('Nama', profile.nama),
              _buildProfileInfo('TTL', profile.ttl),
              _buildProfileInfo('Alamat', profile.alamat),
              _buildProfileInfo('No. HP', profile.noHp),
              _buildProfileInfo('Email', profile.email),
              SizedBox(height: 16),
              _buildSectionTitle('Riwayat Pendidikan:'),
              _buildList(profile.pendidikan),
              SizedBox(height: 16),
              _buildSectionTitle('Penghargaan:'),
              _buildList(profile.penghargaan),
              SizedBox(height: 24),
              _buildLinkButton(
                onPressed: () {},
                icon: Icons.link,
                label: 'Akun Github',
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileInfo(String label, String value) {
    return Text(
      '$label: $value',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        fontFamily: 'Poppins',
      ),
    );
  }

  Widget _buildLinkButton({
    required VoidCallback onPressed,
    required IconData icon,
    required String label,
  }) {
    return TextButton.icon(
      onPressed: () => _launchgitHub(profile.githubUrl),
      icon: Icon(icon, color: Colors.blue),
      label: Text(
        label,
        style: TextStyle(
          fontSize: 18,
          color: Colors.blue,
          fontFamily: 'Poppins',
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontFamily: 'Poppins',
      ),
    );
  }

  Widget _buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Text(
          '- $item',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        );
      }).toList(),
    );
  }
}
