import 'package:flutter/material.dart';

import '../widgets/bildirim_karti_widget.dart';
import '../widgets/filtre_cip_widget.dart';

class BildirimSayfasi extends StatelessWidget {
  const BildirimSayfasi({super.key});

  @override
  Widget build(BuildContext baglam) {
    final bildirimler = const [
      BildirimKartiWidget(
        kullaniciAdi: "Ceren Bıyık",
        bildirimAciklamasi:
            "Microsoft şirketinde Üniversite Birinci Sınıf Öğrencisi",
        ortakBaglantiYazisi: "7 ortak bağlantı",
        bildirimZamani: "16 saat",
        profilFotografUrl: "https://i.pravatar.cc/300?img=5",
      ),
      BildirimKartiWidget(
        kullaniciAdi: "Ahmet Yılmaz",
        bildirimAciklamasi: "Flutter Developer • Mobil Uygulama Geliştirici",
        ortakBaglantiYazisi: "12 ortak bağlantı",
        bildirimZamani: "2 saat",
        profilFotografUrl: "https://i.pravatar.cc/300?img=12",
      ),
      BildirimKartiWidget(
        kullaniciAdi: "Ayşe Demir",
        bildirimAciklamasi: "UI/UX Designer • Figma ve Mobil Tasarım",
        ortakBaglantiYazisi: "5 ortak bağlantı",
        bildirimZamani: "1 gün",
        profilFotografUrl: "https://i.pravatar.cc/300?img=9",
      ),
      BildirimKartiWidget(
        kullaniciAdi: "Fatma Kaya",
        bildirimAciklamasi: "Network",
        ortakBaglantiYazisi: "1 ortak bağlantı",
        bildirimZamani: "9 gün",
        profilFotografUrl: "https://i.pravatar.cc/300?img=",
      ),
      BildirimKartiWidget(
        kullaniciAdi: "Zeynep Şahin",
        bildirimAciklamasi: "Proje Yöneticisi",
        ortakBaglantiYazisi: "6 ortak bağlantı",
        bildirimZamani: "1 gün",
        profilFotografUrl: "https://i.pravatar.cc/300?img=25a",
      ),
      BildirimKartiWidget(
        kullaniciAdi: "Miraç Boz",
        bildirimAciklamasi: "Proje Yöneticisi",
        ortakBaglantiYazisi: "6 ortak bağlantı",
        bildirimZamani: "1 gün",
        profilFotografUrl: "https://i.pravatar.cc/300?img=54",
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 12),
          _filtreSatiri(),
          const SizedBox(height: 14),
          _bildirimListesi(bildirimler),
        ],
      ),
    );
  }

  // Ustteki filtreler appbar altinda yan yana duruyor.
  Widget _filtreSatiri() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 12),
          FiltreChipWidget(yazi: "Tümü", secili: true),
          SizedBox(width: 8),
          FiltreChipWidget(yazi: "İş İlanları"),
          SizedBox(width: 8),
          FiltreChipWidget(yazi: "Gönderilerim"),
          SizedBox(width: 8),
          FiltreChipWidget(yazi: "Bahsetmeler"),
          SizedBox(width: 12),
        ],
      ),
    );
  }

  // Kartlarin arasindaki cizgiler kart widgetinda kalmaya devam ediyor.
  Widget _bildirimListesi(List<Widget> bildirimler) {
    return Expanded(child: ListView(children: bildirimler));
  }
}
