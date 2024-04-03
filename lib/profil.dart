class PersonalProfile {
  final String nama;
  final String fotoprofil;
  final String ttl;
  final String alamat;
  final String noHp;
  final String email;
  final String githubUrl;
  final List<String> pendidikan;
  final List<String> penghargaan;

  PersonalProfile({
    required this.nama,
    required this.fotoprofil,
    required this.ttl,
    required this.alamat,
    required this.noHp,
    required this.email,
    required this.githubUrl,
    required this.pendidikan,
    required this.penghargaan,
  });
}

class ProfilData {
  static List<PersonalProfile> profilList = [
    PersonalProfile(
      nama: 'Alfina Mazidatul Mufidah (22082010002)',
      fotoprofil: 'assets/AlfinaMazidatulMufidah-removebg.png',
      ttl: '20 Juni 2004',
      alamat: 'Karangbinangunan, Lamongan, Jawa Timur',
      noHp: '081215754494',
      email: '22082010002@student.upnjatim.ac.id',
      githubUrl: 'https://github.com/Alfinamazidatulmufidah',
      pendidikan: ['MIS Muinuddin', 'SMP Maarif 1 Karbin', 'SMAN 1 Karbin'],
      penghargaan: ['- Belum Ada--'],
    ),
    PersonalProfile(
      nama: 'Dwi Septiajayanti (22082010042)',
      fotoprofil: 'assets/DwiSeptiajayanti.png',
      ttl: '06 September 2004',
      alamat: 'Jl.Jolotundo, Ngoro, Mojokerto, Jawa Timur',
      noHp: '087654321098',
      email: '22082010042@student.upnjatim.ac.id',
      githubUrl: 'https://github.com/sept1a123',
      pendidikan: [
        'SD Purwojati 2',
        'SMP Islam Sedati',
        'SMAN 1 Ngoro-Mojokerto',
      ],
      penghargaan: ['- Belum Ada--'],
    ),
  ];
}
