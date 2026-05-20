import 'package:flutter/material.dart';

import '../parcalar/paylasim_karti.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext baglam) {
    return ListView(
      padding: const EdgeInsets.only(top: 10, bottom: 18),
      children: const [
        PaylasimKarti(
          isim: 'Zeynep Kaya',
          unvan: 'Bilgisayar Programciligi Ogrencisi',
          zaman: '20 dakika once',
          aciklamaMetni:
              'Bugun Flutter ile basit bir LinkedIn arayuzu denemesi yaptim. Hatalarim var ama ogrenirken paylasmak iyi geliyor.',
          profilRengi: Color(0xFFB7D6E8),
          gorselRengi: Color(0xFFD8EAF5),
          gorselIkonu: Icons.phone_android,
        ),
        SizedBox(height: 10),
        PaylasimKarti(
          isim: 'Emre Yildiz',
          unvan: 'Yazilim Gelistirme Stajyeri',
          zaman: '2 saat once',
          aciklamaMetni:
              'Okul projesi icin is ilanlari ve bildirimler sayfasini tamamlamaya calisiyorum. Flutter widget yapisi biraz daha netlesmeye basladi.',
          profilRengi: Color(0xFFE6C9A8),
          gorselRengi: Color(0xFFF1E3D0),
          gorselIkonu: Icons.code,
        ),
        SizedBox(height: 10),
        PaylasimKarti(
          isim: 'Merve Demir',
          unvan: 'Grafik Tasarim Ogrencisi',
          zaman: '1 gun once',
          aciklamaMetni:
              'Mobil arayuzlerde sade renklerin daha okunabilir oldugunu fark ettim. Bu hafta kart tasarimlari uzerinde calisiyorum.',
          profilRengi: Color(0xFFC8D6B9),
          gorselRengi: Color(0xFFE2EAD8),
          gorselIkonu: Icons.palette_outlined,
        ),
      ],
    );
  }
}
