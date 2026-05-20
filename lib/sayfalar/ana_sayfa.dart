import 'package:flutter/material.dart';

import '../parcalar/paylasim_karti.dart';

const double _kartArasiBosluk = 10;

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext baglam) {
    // Kartlar liste halinde durunca aralarindaki bosluk kolay ayarlaniyor.
    final paylasimKartlari = const [
      PaylasimKarti(
        kullaniciAdi: 'Zeynep Kaya',
        kullaniciUnvani: 'Bilgisayar Programciligi Ogrencisi',
        paylasimZamani: '20 dakika once',
        paylasimMetni:
            'Bugun Flutter ile basit bir LinkedIn arayuzu denemesi yaptim. Hatalarim var ama ogrenirken paylasmak iyi geliyor.',
        profilArkaPlanRengi: Color(0xFFB7D6E8),
        gorselArkaPlanRengi: Color(0xFFD8EAF5),
        gorselIkonu: Icons.phone_android,
      ),
      PaylasimKarti(
        kullaniciAdi: 'Emre Yildiz',
        kullaniciUnvani: 'Yazilim Gelistirme Stajyeri',
        paylasimZamani: '2 saat once',
        paylasimMetni:
            'Okul projesi icin is ilanlari ve bildirimler sayfasini tamamlamaya calisiyorum. Flutter widget yapisi biraz daha netlesmeye basladi.',
        profilArkaPlanRengi: Color(0xFFE6C9A8),
        gorselArkaPlanRengi: Color(0xFFF1E3D0),
        gorselIkonu: Icons.code,
      ),
      PaylasimKarti(
        kullaniciAdi: 'Merve Demir',
        kullaniciUnvani: 'Grafik Tasarim Ogrencisi',
        paylasimZamani: '1 gun once',
        paylasimMetni:
            'Mobil arayuzlerde sade renklerin daha okunabilir oldugunu fark ettim. Bu hafta kart tasarimlari uzerinde calisiyorum.',
        profilArkaPlanRengi: Color(0xFFC8D6B9),
        gorselArkaPlanRengi: Color(0xFFE2EAD8),
        gorselIkonu: Icons.palette_outlined,
      ),
    ];

    return ListView(
      padding: const EdgeInsets.only(top: 10, bottom: 16),
      children: _kartlariBoslukluGoster(paylasimKartlari),
    );
  }

  List<Widget> _kartlariBoslukluGoster(List<Widget> paylasimKartlari) {
    final kartListesi = <Widget>[];

    for (var i = 0; i < paylasimKartlari.length; i++) {
      kartListesi.add(paylasimKartlari[i]);

      if (i != paylasimKartlari.length - 1) {
        kartListesi.add(const SizedBox(height: _kartArasiBosluk));
      }
    }

    return kartListesi;
  }
}
