import 'package:flutter/material.dart';

import '../widgets/filtre_cip_widget.dart';
import '../widgets/is_ilani_karti_widget.dart';

const List<String> _filtreYazilari = [
  "Tercihler",
  "İş İlanı takipçisi",
  "Ücretsiz iş ilanı yayınla",
  "Kariyer İçgörülerim",
];

// Ekranda görünen ilan bilgileri burada toplu duruyor.
const List<_IsIlaniBilgisi> _ilanBilgileri = [
  _IsIlaniBilgisi(
    isBasligi: "Network Developer",
    sirketAdi: "Şanstech",
    calismaKonumu: "İstanbul, Türkiye (Hybrid)",
    kisaDetay: "1 okul mezunu burada çalışıyor",
    sirketIkonu: Icons.network_check,
  ),
  _IsIlaniBilgisi(
    isBasligi: "Android Developer",
    sirketAdi: "Şanstech",
    calismaKonumu: "İstanbul, Türkiye (Hybrid)",
    kisaDetay: "1 okul mezunu burada çalışıyor",
    sirketIkonu: Icons.code,
  ),
  _IsIlaniBilgisi(
    isBasligi: "Mobile Developer",
    sirketAdi: "Lokalde",
    calismaKonumu: "İstanbul (Hybrid)",
    kisaDetay: "Tanıtılan içerik",
    sirketIkonu: Icons.mobile_friendly,
  ),
  _IsIlaniBilgisi(
    isBasligi: "Flutter Developer",
    sirketAdi: "TechSoft",
    calismaKonumu: "Ankara (Remote)",
    kisaDetay: "Kolay Başvuru",
    sirketIkonu: Icons.flutter_dash,
  ),
];

class IsSayfasi extends StatelessWidget {
  const IsSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 12),
          _filtreSatiri(),
          const SizedBox(height: 18),
          _baslikAlani(),
          const SizedBox(height: 12),
          _ilanListesi(),
        ],
      ),
    );
  }

  Widget _filtreSatiri() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 12),
          for (int i = 0; i < _filtreYazilari.length; i++) ...[
            FiltreChipWidget(yazi: _filtreYazilari[i]),
            if (i != _filtreYazilari.length - 1) const SizedBox(width: 8),
          ],
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _baslikAlani() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Sizin için seçilen en önemli iş ilanları",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 6),
          Text(
            "Profilinize, tercihlerinize ve başvurular, aramalar, kaydedilenler gibi faaliyetlerinize göre",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade700,
              height: 1.3,
            ),
          ),
        ],
      ),
    );
  }

  Widget _ilanListesi() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: _ilanBilgileri.length,
        itemBuilder: (context, index) {
          final ilan = _ilanBilgileri[index];

          return IsIlaniKartiWidget(
            isBasligi: ilan.isBasligi,
            sirketAdi: ilan.sirketAdi,
            calismaKonumu: ilan.calismaKonumu,
            kisaDetay: ilan.kisaDetay,
            sirketIkonu: ilan.sirketIkonu,
          );
        },
      ),
    );
  }
}

class _IsIlaniBilgisi {
  final String isBasligi;
  final String sirketAdi;
  final String calismaKonumu;
  final String kisaDetay;
  final IconData sirketIkonu;

  const _IsIlaniBilgisi({
    required this.isBasligi,
    required this.sirketAdi,
    required this.calismaKonumu,
    required this.kisaDetay,
    required this.sirketIkonu,
  });
}
