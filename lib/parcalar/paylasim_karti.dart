import 'package:flutter/material.dart';

class PaylasimKarti extends StatelessWidget {
  const PaylasimKarti({
    super.key,
    required this.isim,
    required this.unvan,
    required this.zaman,
    required this.aciklamaMetni,
    required this.profilRengi,
    required this.gorselRengi,
    required this.gorselIkonu,
  });

  final String isim;
  final String unvan;
  final String zaman;
  final String aciklamaMetni;
  final Color profilRengi;
  final Color gorselRengi;
  final IconData gorselIkonu;

  @override
  Widget build(BuildContext baglam) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: profilRengi,
                child: const Icon(Icons.person, color: Colors.black54),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isim,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      unvan,
                      style: TextStyle(fontSize: 13, color: Colors.grey.shade700),
                    ),
                    Text(
                      zaman,
                      style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.more_horiz, color: Colors.black54),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            aciklamaMetni,
            style: const TextStyle(fontSize: 14, height: 1.35),
          ),
          const SizedBox(height: 12),
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              color: gorselRengi,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(gorselIkonu, size: 54, color: Colors.black45),
          ),
          const SizedBox(height: 10),
          Divider(color: Colors.grey.shade300),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _PaylasimButonu(ikon: Icons.thumb_up_alt_outlined, yazi: 'Begen'),
              _PaylasimButonu(ikon: Icons.chat_bubble_outline, yazi: 'Yorum'),
              _PaylasimButonu(ikon: Icons.repeat, yazi: 'Paylas'),
              _PaylasimButonu(ikon: Icons.send_outlined, yazi: 'Gonder'),
            ],
          ),
        ],
      ),
    );
  }
}

class _PaylasimButonu extends StatelessWidget {
  const _PaylasimButonu({
    required this.ikon,
    required this.yazi,
  });

  final IconData ikon;
  final String yazi;

  @override
  Widget build(BuildContext baglam) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Column(
        children: [
          Icon(ikon, size: 20, color: Colors.grey),
          const SizedBox(height: 3),
          Text(yazi, style: const TextStyle(fontSize: 11, color: Colors.grey)),
        ],
      ),
    );
  }
}
