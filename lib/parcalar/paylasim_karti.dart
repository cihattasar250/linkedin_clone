import 'package:flutter/material.dart';

class PaylasimKarti extends StatelessWidget {
  const PaylasimKarti({
    super.key,
    required this.kullaniciAdi,
    required this.kullaniciUnvani,
    required this.paylasimZamani,
    required this.paylasimMetni,
    required this.profilArkaPlanRengi,
    required this.gorselArkaPlanRengi,
    required this.gorselIkonu,
  });

  final String kullaniciAdi;
  final String kullaniciUnvani;
  final String paylasimZamani;
  final String paylasimMetni;
  final Color profilArkaPlanRengi;
  final Color gorselArkaPlanRengi;
  final IconData gorselIkonu;

  @override
  Widget build(BuildContext baglam) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _baslikSatiri(),
          const SizedBox(height: 10),
          _paylasimMetniAlani(),
          const SizedBox(height: 12),
          _paylasimGorseli(),
          const SizedBox(height: 10),
          _altAyiriciCizgi(),
          const _AltButonSatiri(),
        ],
      ),
    );
  }

  Widget _baslikSatiri() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Ust kisimda profil ve kullanici bilgileri ayni hizada tutuluyor.
        CircleAvatar(
          radius: 24,
          backgroundColor: profilArkaPlanRengi,
          child: const Icon(Icons.person, color: Colors.black54),
        ),
        const SizedBox(width: 10),
        Expanded(child: _kullaniciYazilari()),
        const Icon(Icons.more_horiz, color: Colors.black54),
      ],
    );
  }

  Widget _kullaniciYazilari() {
    final bilgiYaziStili = TextStyle(fontSize: 13, color: Colors.grey.shade700);
    final zamanYaziStili = TextStyle(fontSize: 12, color: Colors.grey.shade600);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          kullaniciAdi,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Text(kullaniciUnvani, style: bilgiYaziStili),
        Text(paylasimZamani, style: zamanYaziStili),
      ],
    );
  }

  Widget _paylasimMetniAlani() {
    return Text(
      paylasimMetni,
      style: const TextStyle(fontSize: 14, height: 1.35),
    );
  }

  Widget _paylasimGorseli() {
    return Container(
      height: 170,
      width: double.infinity,
      decoration: BoxDecoration(
        color: gorselArkaPlanRengi,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(gorselIkonu, size: 54, color: Colors.black45),
    );
  }

  Widget _altAyiriciCizgi() {
    return Divider(height: 14, thickness: 1, color: Colors.grey.shade300);
  }
}

// Alt kisimdaki butonlar ayni yapida oldugu icin tek yerde toplandi.
class _AltButonSatiri extends StatelessWidget {
  const _AltButonSatiri();

  @override
  Widget build(BuildContext baglam) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _PaylasimButonu(
          butonIkonu: Icons.thumb_up_alt_outlined,
          butonYazisi: 'Begen',
        ),
        _PaylasimButonu(
          butonIkonu: Icons.chat_bubble_outline,
          butonYazisi: 'Yorum',
        ),
        _PaylasimButonu(butonIkonu: Icons.repeat, butonYazisi: 'Paylas'),
        _PaylasimButonu(butonIkonu: Icons.send_outlined, butonYazisi: 'Gonder'),
      ],
    );
  }
}

class _PaylasimButonu extends StatelessWidget {
  const _PaylasimButonu({required this.butonIkonu, required this.butonYazisi});

  final IconData butonIkonu;
  final String butonYazisi;

  @override
  Widget build(BuildContext baglam) {
    const butonYaziStili = TextStyle(fontSize: 11, color: Colors.grey);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Icon(butonIkonu, size: 20, color: Colors.grey),
          const SizedBox(height: 3),
          Text(butonYazisi, style: butonYaziStili),
        ],
      ),
    );
  }
}
