import 'package:flutter/material.dart';

class AgimSayfasi extends StatelessWidget {
  const AgimSayfasi({super.key});

  @override
  Widget build(BuildContext baglam) {
    const sekmeYaziStili = TextStyle(fontSize: 16, fontWeight: FontWeight.w500);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Theme(
                  data: Theme.of(
                    baglam,
                  ).copyWith(dividerColor: Colors.transparent),
                  child: TabBar(
                    indicatorColor: const Color(0xFF01754F),
                    indicatorWeight: 3,
                    labelColor: const Color(0xFF01754F),
                    unselectedLabelColor: Colors.black54,
                    labelPadding: EdgeInsets.zero,
                    tabs: [
                      Tab(
                        height: 46,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Büyüt", style: sekmeYaziStili),
                            const SizedBox(width: 6),
                          ],
                        ),
                      ),
                      const Tab(
                        height: 46,
                        child: Text(
                          "Ağınızdan haberler",
                          style: sekmeYaziStili,
                        ),
                      ),
                    ],
                  ),
                ),

                _inceAyirici(),

                // Davetler alani ustte sabit dursun diye ayri tutuldu.
                _bolumBasligi(
                  baslik: "Davetler (10)",
                  yatayBosluk: 16,
                  baslikStili: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  sagTaraf: const Icon(
                    Icons.arrow_forward,
                    size: 22,
                    color: Colors.black87,
                  ),
                ),

                _inceAyirici(),

                const DavetKarti(
                  kullaniciAdi: "Eren Yalçın",
                  kullaniciUnvani: "Mobile App Developer",
                  ortakBaglantiYazisi: "8 ortak bağlantı",
                  davetZamani: "9 dakika önce",
                ),

                const DavetKarti(
                  kullaniciAdi: "Ahmet Kaya",
                  kullaniciUnvani: "UI/UX Designer",
                  ortakBaglantiYazisi: "12 ortak bağlantı",
                  davetZamani: "1 saat önce",
                ),

                _kalinAyirici(),

                // Oneriler bolumu grid olarak kaldi, sadece kod okunurlugu toparlandi.
                _bolumBasligi(
                  baslik: "Sizin için önerilenler",
                  yatayBosluk: 12,
                  baslikStili: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                  sagTaraf: Text(
                    "Tümünü gör",
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                  ),
                ),

                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),

                  padding: const EdgeInsets.symmetric(horizontal: 12),

                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,

                  childAspectRatio: 0.62,

                  children: const [
                    KisiKartWidget(
                      kisiAdi: "Fatmagül Memiş",
                      kisiUnvani: "Bilgisayar Mühendisi Adayı",
                      profilFotografUrl: "https://i.pravatar.cc/300?img=5",
                    ),

                    KisiKartWidget(
                      kisiAdi: "Oğuzhan Dursun",
                      kisiUnvani: "Computer engineering student",
                      profilFotografUrl: "https://i.pravatar.cc/300?img=12",
                    ),

                    KisiKartWidget(
                      kisiAdi: "Uğur Çapkur",
                      kisiUnvani: "Katıldı (Giresun Üniversitesi)",
                      profilFotografUrl: "https://i.pravatar.cc/300?img=3",
                    ),

                    KisiKartWidget(
                      kisiAdi: "İlennur Civelek",
                      kisiUnvani: "Computer Engineering Student",
                      profilFotografUrl: "https://i.pravatar.cc/300?img=9",
                    ),
                  ],
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _inceAyirici() {
    return Divider(height: 1, thickness: 1, color: Colors.grey.shade300);
  }

  Widget _kalinAyirici() {
    return Divider(height: 10, thickness: 10, color: Colors.grey.shade300);
  }

  Widget _bolumBasligi({
    required String baslik,
    required double yatayBosluk,
    required TextStyle baslikStili,
    required Widget sagTaraf,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: yatayBosluk, vertical: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(baslik, style: baslikStili),
          sagTaraf,
        ],
      ),
    );
  }
}

class DavetKarti extends StatelessWidget {
  const DavetKarti({
    super.key,
    required this.kullaniciAdi,
    required this.kullaniciUnvani,
    required this.ortakBaglantiYazisi,
    required this.davetZamani,
  });

  final String kullaniciAdi;
  final String kullaniciUnvani;
  final String ortakBaglantiYazisi;
  final String davetZamani;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CircleAvatar(
                radius: 38,
                backgroundColor: Colors.grey.shade300,

                child: const Icon(
                  Icons.person,
                  color: Colors.black54,
                  size: 30,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            kullaniciAdi,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        const SizedBox(width: 4),

                        Icon(
                          Icons.verified,
                          size: 18,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),

                    const SizedBox(height: 3),

                    Text(
                      kullaniciUnvani,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 3),

                    Text(
                      ortakBaglantiYazisi,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      davetZamani,
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              Row(
                children: [
                  _davetButonu(
                    ikon: Icons.close,
                    renk: Colors.grey,
                    kenarKalinligi: 1.4,
                  ),

                  const SizedBox(width: 10),

                  _davetButonu(
                    ikon: Icons.check,
                    renk: const Color(0xFF0A66C2),
                    kenarKalinligi: 1.8,
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
      ],
    );
  }

  Widget _davetButonu({
    required IconData ikon,
    required Color renk,
    required double kenarKalinligi,
  }) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: renk, width: kenarKalinligi),
      ),
      child: Icon(ikon, size: 25, color: renk),
    );
  }
}

class KisiKartWidget extends StatelessWidget {
  const KisiKartWidget({
    super.key,
    required this.kisiAdi,
    required this.kisiUnvani,
    required this.profilFotografUrl,
  });

  final String kisiAdi;
  final String kisiUnvani;
  final String profilFotografUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(16),

        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,

            children: [
              Container(
                height: 55,

                decoration: BoxDecoration(
                  color: const Color(0xFFC7D3D6),

                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),

              Positioned(
                top: 14,
                left: 0,
                right: 0,

                child: CircleAvatar(
                  radius: 38,

                  backgroundColor: Colors.white,

                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(profilFotografUrl),
                  ),
                ),
              ),

              Positioned(
                top: 10,
                right: 10,

                child: Container(
                  width: 34,
                  height: 34,

                  decoration: const BoxDecoration(
                    color: Color(0xFF2F3437),
                    shape: BoxShape.circle,
                  ),

                  child: const Icon(Icons.close, color: Colors.white, size: 22),
                ),
              ),
            ],
          ),

          const SizedBox(height: 62),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),

            child: Text(
              kisiAdi,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,

              textAlign: TextAlign.center,

              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),

          const SizedBox(height: 4),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child: Text(
              kisiUnvani,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,

              textAlign: TextAlign.center,

              style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
            ),
          ),

          const SizedBox(height: 30),

          Text(
            "Profiliniz esas alınmıştır",
            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
          ),

          const SizedBox(height: 14),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),

            child: Container(
              width: double.infinity,
              height: 40,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),

                border: Border.all(color: const Color(0xFF0A66C2), width: 1.8),
              ),

              child: const Center(
                child: Text(
                  "Bağlantı kur",
                  style: TextStyle(
                    color: Color(0xFF0A66C2),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
