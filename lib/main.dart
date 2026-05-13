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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'LinkedIn Tasarım',

      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),

      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int seciliIndex = 0;

  @override
  Widget build(BuildContext context) {
    final sayfalar = [
      const AnaSayfa(),

      const AgimSayfasi(),

      GonderSayfasi(
        geriDon: () {
          setState(() {
            seciliIndex = 0;
          });
        },
      ),

      const BildirimSayfasi(),

      const IsSayfasi(),
    ];

    return Scaffold(
      appBar: seciliIndex == 2 ? null : const AnaSayfaAppBar(),

      body: sayfalar[seciliIndex],

      bottomNavigationBar: seciliIndex == 2
          ? null
          : AltNavigationBar(seciliIndex: seciliIndex, onTap: _sayfaDegistir),
    );
  }

  void _sayfaDegistir(int index) {
    setState(() {
      seciliIndex = index;
    });
  }
}
