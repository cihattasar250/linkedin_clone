import 'package:flutter/material.dart';

import 'sayfalar/agim_sayfasi.dart';
import 'sayfalar/ana_sayfa.dart';
import 'sayfalar/bildirim_sayfasi.dart';
import 'sayfalar/gonder_sayfasi.dart';
import 'sayfalar/is_ilanlari_sayfasi.dart';
import 'widgets/alt_navigation_bar.dart';
import 'widgets/ana_sayfa_appbar.dart';

void main() {
  runApp(const Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({super.key});

  @override
  Widget build(BuildContext baglam) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LinkedIn Ogrenci Tasarimi',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF3F2EF),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF0A66C2)),
      ),
      home: const AnaCerceve(),
    );
  }
}

class AnaCerceve extends StatefulWidget {
  const AnaCerceve({super.key});

  @override
  State<AnaCerceve> createState() => _AnaCerceveDurumu();
}

class _AnaCerceveDurumu extends State<AnaCerceve> {
  int secilenSayfaIndexi = 0;

  bool get gonderSayfasiAcik => secilenSayfaIndexi == 2;

  @override
  Widget build(BuildContext baglam) {
    final altMenuSayfalari = <Widget>[
      const AnaSayfa(),
      const AgimSayfasi(),
      GonderSayfasi(geriDon: _anaSayfayaDon),
      const BildirimSayfasi(),
      const IsSayfasi(),
    ];

    return Scaffold(
      appBar: gonderSayfasiAcik ? null : const AnaSayfaAppBar(),
      body: altMenuSayfalari[secilenSayfaIndexi],
      bottomNavigationBar: gonderSayfasiAcik
          ? null
          : AltNavigationBar(seciliIndex: secilenSayfaIndexi, onTap: _sayfaSec),
    );
  }

  void _sayfaSec(int yeniSayfaIndexi) {
    setState(() {
      secilenSayfaIndexi = yeniSayfaIndexi;
    });
  }

  void _anaSayfayaDon() {
    setState(() {
      secilenSayfaIndexi = 0;
    });
  }
}
