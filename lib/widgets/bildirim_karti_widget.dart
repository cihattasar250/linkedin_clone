import 'package:flutter/material.dart';

class BildirimKartiWidget extends StatelessWidget {
  const BildirimKartiWidget({
    super.key,
    required this.kullaniciAdi,
    required this.bildirimAciklamasi,
    required this.ortakBaglantiYazisi,
    required this.bildirimZamani,
    required this.profilFotografUrl,
  });

  final String kullaniciAdi;
  final String bildirimAciklamasi;
  final String ortakBaglantiYazisi;
  final String bildirimZamani;
  final String profilFotografUrl;

  @override
  Widget build(BuildContext baglam) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 13),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _profilFotografi(),
              const SizedBox(width: 12),
              Expanded(child: _bildirimMetinleri()),
              const SizedBox(width: 10),
              _sagBilgiAlani(),
            ],
          ),
        ),
        _altAyiriciCizgi(),
      ],
    );
  }

  Widget _profilFotografi() {
    return CircleAvatar(
      radius: 30,
      backgroundImage: NetworkImage(profilFotografUrl),
    );
  }

  Widget _bildirimMetinleri() {
    final aciklamaYaziStili = TextStyle(
      fontSize: 14,
      color: Colors.grey.shade700,
      height: 1.3,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _anaBildirimYazisi(),
        const SizedBox(height: 7),
        Text(bildirimAciklamasi, style: aciklamaYaziStili),
        const SizedBox(height: 8),
        _ortakBaglantiSatiri(),
      ],
    );
  }

  Widget _anaBildirimYazisi() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 15,
          color: Colors.grey.shade800,
          height: 1.35,
        ),
        children: [
          TextSpan(
            text: kullaniciAdi,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          const TextSpan(
            text: " adlı kullanıcıyı tanıyor olabilirsiniz. Ağınıza ekleyin.",
          ),
        ],
      ),
    );
  }

  Widget _ortakBaglantiSatiri() {
    final ortakBaglantiRengi = Colors.grey.shade700;

    return Row(
      children: [
        Icon(Icons.people_alt_outlined, size: 18, color: ortakBaglantiRengi),
        const SizedBox(width: 4),
        Text(
          ortakBaglantiYazisi,
          style: TextStyle(fontSize: 14, color: ortakBaglantiRengi),
        ),
      ],
    );
  }

  Widget _sagBilgiAlani() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          bildirimZamani,
          style: TextStyle(fontSize: 13, color: Colors.grey.shade600),
        ),
        const SizedBox(height: 10),
        Icon(Icons.more_vert, color: Colors.grey.shade700),
      ],
    );
  }

  Widget _altAyiriciCizgi() {
    return Divider(height: 1, thickness: 1, color: Colors.grey.shade300);
  }
}
