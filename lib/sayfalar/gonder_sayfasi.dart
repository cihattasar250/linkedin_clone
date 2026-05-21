import 'package:flutter/material.dart';

class GonderSayfasi extends StatelessWidget {
  const GonderSayfasi({super.key, required this.geriDon});

  final VoidCallback geriDon;

  @override
  Widget build(BuildContext baglam) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(height: 12),
              _ustSatirAlani(),
              const SizedBox(height: 24),
              _paylasimYaziAlani(),
              _altButonAlani(),
            ],
          ),
        ),
      ),
    );
  }

  // Ust kisim appbar gibi kullanildigi icin ayri tutuldu.
  Widget _ustSatirAlani() {
    return Row(
      children: [
        _kapatButonu(),
        const SizedBox(width: 14),
        _profilFotografi(),
        const SizedBox(width: 10),
        _gonderiHedefi(),
        const SizedBox(width: 8),
        const Icon(Icons.access_time, size: 30, color: Colors.black87),
        const SizedBox(width: 12),
        _postalaDurumButonu(),
      ],
    );
  }

  Widget _kapatButonu() {
    return GestureDetector(
      onTap: geriDon,
      child: const Icon(Icons.close, size: 34, color: Colors.black87),
    );
  }

  Widget _profilFotografi() {
    return const CircleAvatar(
      radius: 20,
      backgroundImage: NetworkImage("https://i.pravatar.cc/300?img=12"),
    );
  }

  Widget _gonderiHedefi() {
    return const Expanded(
      child: Row(
        children: [
          Flexible(
            child: Text(
              "Herhangi biri",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Icon(Icons.arrow_drop_down, size: 24, color: Colors.black87),
        ],
      ),
    );
  }

  Widget _postalaDurumButonu() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xFFE8E8E8),
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Text(
        "Postala",
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }

  Widget _paylasimYaziAlani() {
    return Expanded(
      child: TextField(
        maxLines: null,
        expands: true,
        cursorColor: Colors.black,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "Düşüncelerinizi paylaşın...",
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey.shade500),
        ),
        style: const TextStyle(fontSize: 20, color: Colors.black87),
      ),
    );
  }

  // Alt kisimda sadece mevcut ikonlarin hizasi korunuyor.
  Widget _altButonAlani() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.image_outlined, size: 30, color: Colors.black54),
          SizedBox(width: 32),
          Icon(Icons.add, size: 38, color: Colors.black54),
        ],
      ),
    );
  }
}
