import 'package:flutter/material.dart';

class IsIlaniKartiWidget extends StatelessWidget {
  final String isBasligi;
  final String sirketAdi;
  final String calismaKonumu;
  final String kisaDetay;
  final IconData sirketIkonu;

  const IsIlaniKartiWidget({
    super.key,
    required this.isBasligi,
    required this.sirketAdi,
    required this.calismaKonumu,
    required this.kisaDetay,
    required this.sirketIkonu,
  });

  @override
  Widget build(BuildContext context) {
    const baslikYaziStili = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    );

    final araYaziStili = TextStyle(fontSize: 15, color: Colors.grey.shade700);

    final detayYaziStili = TextStyle(fontSize: 14, color: Colors.grey.shade600);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo kutusunun boyutu tüm kartlarda aynı kalıyor.
              Container(
                width: 58,
                height: 58,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(sirketIkonu, color: Colors.white, size: 30),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(isBasligi, style: baslikYaziStili),
                    const SizedBox(height: 3),
                    Text(sirketAdi, style: araYaziStili),
                    const SizedBox(height: 3),
                    Text(calismaKonumu, style: araYaziStili),
                    const SizedBox(height: 8),
                    Text(kisaDetay, style: detayYaziStili),
                  ],
                ),
              ),
              const SizedBox(
                width: 32,
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.close, size: 28, color: Colors.black87),
                ),
              ),
            ],
          ),
        ),
        Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
      ],
    );
  }
}
