import 'package:flutter/material.dart';

import '../widgets/bildirim_karti_widget.dart';
import '../widgets/filtre_cip_widget.dart';

const List<_BildirimFiltresi> _bildirimFiltreleri = [
  _BildirimFiltresi(yazi: "Tümü", secili: true),
  _BildirimFiltresi(yazi: "İş İlanları"),
  _BildirimFiltresi(yazi: "Gönderilerim"),
  _BildirimFiltresi(yazi: "Bahsetmeler"),
];

const List<BildirimKartiWidget> _bildirimKartlari = [
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

class BildirimSayfasi extends StatelessWidget {
  const BildirimSayfasi({super.key});

  @override
  Widget build(BuildContext baglam) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 12),
          _filtreSatiri(),
          const SizedBox(height: 12),
          _bildirimListeAlani(),
        ],
      ),
    );
  }

  // Ustteki filtreler appbar altinda yan yana duruyor.
  Widget _filtreSatiri() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 12),
          for (int i = 0; i < _bildirimFiltreleri.length; i++) ...[
            FiltreChipWidget(
              yazi: _bildirimFiltreleri[i].yazi,
              secili: _bildirimFiltreleri[i].secili,
            ),
            if (i != _bildirimFiltreleri.length - 1) const SizedBox(width: 8),
          ],
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  // Kartlarin arasindaki cizgiler kart widgetinda kalmaya devam ediyor.
  Widget _bildirimListeAlani() {
    return Expanded(child: ListView(children: _bildirimKartlari));
  }
}

class _BildirimFiltresi {
  final String yazi;
  final bool secili;

  const _BildirimFiltresi({required this.yazi, this.secili = false});
}
