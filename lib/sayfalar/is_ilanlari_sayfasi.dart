import 'package:flutter/material.dart';

import '../widgets/filtre_cip_widget.dart';
import '../widgets/is_ilani_karti_widget.dart';

class IsSayfasi extends StatelessWidget {
  const IsSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          const SizedBox(height: 12),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            child: Row(
              children: const [
                SizedBox(width: 12),

                FiltreChipWidget(
                  yazi: "Tercihler",
                ),

                SizedBox(width: 8),

                FiltreChipWidget(
                  yazi: "İş İlanı takipçisi",
                ),

                SizedBox(width: 8),

                FiltreChipWidget(
                  yazi: "Ücretsiz iş ilanı yayınla",
                ),

                SizedBox(width: 8),

                FiltreChipWidget(
                  yazi: "Kariyer İçgörülerim",
                ),

                SizedBox(width: 12),
              ],
            ),
          ),

          const SizedBox(height: 18),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                const Text(
                  "Sizin için seçilen en önemli iş ilanları",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
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
          ),

          const SizedBox(height: 12),

          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  IsIlaniKartiWidget(
                    baslik: "Network Developer",
                    sirket: "Şanstech",
                    konum: "İstanbul, Türkiye (Hybrid)",
                    detay: "1 okul mezunu burada çalışıyor",
                    ikon: Icons.network_check,
                  ),
                  IsIlaniKartiWidget(
                    baslik: "Android Developer",
                    sirket: "Şanstech",
                    konum: "İstanbul, Türkiye (Hybrid)",
                    detay: "1 okul mezunu burada çalışıyor",
                    ikon: Icons.code,
                  ),

                  IsIlaniKartiWidget(
                    baslik: "Mobile Developer",
                    sirket: "Lokalde",
                    konum: "İstanbul (Hybrid)",
                    detay: "Tanıtılan içerik",
                    ikon: Icons.mobile_friendly,
                  ),

                  IsIlaniKartiWidget(
                    baslik: "Flutter Developer",
                    sirket: "TechSoft",
                    konum: "Ankara (Remote)",
                    detay: "Kolay Başvuru",
                    ikon: Icons.flutter_dash,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}