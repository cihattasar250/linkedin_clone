import 'package:flutter/material.dart';

import '../widgets/bildirim_karti_widget.dart';
import '../widgets/filtre_cip_widget.dart';

class BildirimSayfasi extends StatelessWidget {
  const BildirimSayfasi({super.key});

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
                  yazi: "Tümü",
                  secili: true,
                ),

                SizedBox(width: 8),

                FiltreChipWidget(
                  yazi: "İş İlanları",
                ),

                SizedBox(width: 8),

                FiltreChipWidget(
                  yazi: "Gönderilerim",
                ),

                SizedBox(width: 8),

                FiltreChipWidget(
                  yazi: "Bahsetmeler",
                ),

                SizedBox(width: 12),
              ],
            ),
          ),

          const SizedBox(height: 14),

          Expanded(
            child: ListView(
              children: const [
                BildirimKartiWidget(
                  isim: "Ceren Bıyık",
                  aciklama:
                      "Microsoft şirketinde Üniversite Birinci Sınıf Öğrencisi",
                  ortakBaglanti: "7 ortak bağlantı",
                  zaman: "16 saat",
                  fotografUrl: "https://i.pravatar.cc/300?img=5",
                ),

                BildirimKartiWidget(
                  isim: "Ahmet Yılmaz",
                  aciklama:
                      "Flutter Developer • Mobil Uygulama Geliştirici",
                  ortakBaglanti: "12 ortak bağlantı",
                  zaman: "2 saat",
                  fotografUrl: "https://i.pravatar.cc/300?img=12",
                ),

                BildirimKartiWidget(
                  isim: "Ayşe Demir",
                  aciklama:
                      "UI/UX Designer • Figma ve Mobil Tasarım",
                  ortakBaglanti: "5 ortak bağlantı",
                  zaman: "1 gün",
                  fotografUrl: "https://i.pravatar.cc/300?img=9",
                ),

                 BildirimKartiWidget(
                  isim: "Fatma Kaya",
                  aciklama:
                      "Network",
                  ortakBaglanti: "1 ortak bağlantı",
                  zaman: "9 gün",
                  fotografUrl: "https://i.pravatar.cc/300?img=",
                ),
                 BildirimKartiWidget(
                  isim: "Zeynep Şahin",
                  aciklama:
                      "Proje Yöneticisi",
                  ortakBaglanti: "6 ortak bağlantı",
                  zaman: "1 gün",
                  fotografUrl: "https://i.pravatar.cc/300?img=25a",
                ),
                 BildirimKartiWidget(
                  isim: "Miraç Boz",
                  aciklama:
                      "Proje Yöneticisi",
                  ortakBaglanti: "6 ortak bağlantı",
                  zaman: "1 gün",
                  fotografUrl: "https://i.pravatar.cc/300?img=54",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}