import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Divider(thickness: 1, height: 1, color: Colors.grey.shade300),
          const SizedBox(height: 10),
          const PaylasimKarti(
            isim: 'Cihat Taşar',
            unvan: 'Mobile App Developer',
            zaman: '2 saat önce',
            yazi: 'Flutter ile geliştirdiğim yeni arayüz tasarımım yayında.',
          ),
          const SizedBox(height: 15),
          const PaylasimKarti(
            isim: 'Ahmet Yılmaz',
            unvan: 'UI Designer',
            zaman: '5 saat önce',
            yazi: 'Yeni mobil uygulama tasarım konseptimi hazırladım.',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class PaylasimKarti extends StatelessWidget {
  const PaylasimKarti({
    super.key,
    required this.isim,
    required this.unvan,
    required this.zaman,
    required this.yazi,
  });

  final String isim;
  final String unvan;
  final String zaman;
  final String yazi;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(Icons.person, color: Colors.black),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isim,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      unvan,
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 13,
                      ),
                    ),
                    Text(
                      zaman,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.more_horiz),
            ],
          ),
          const SizedBox(height: 14),
          Text(yazi, style: const TextStyle(fontSize: 14)),
          const SizedBox(height: 14),
          Container(
            height: 220,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Icon(Icons.image, size: 50, color: Colors.grey),
            ),
          ),
          const SizedBox(height: 14),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.thumb_up_alt_outlined, size: 20),
              Icon(Icons.comment_outlined, size: 20),
              Icon(Icons.repeat, size: 20),
              Icon(Icons.send_outlined, size: 20),
            ],
          ),
        ],
      ),
    );
  }
}
