import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const _aramaKutusuKenarligi = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(30)),
  borderSide: BorderSide(color: Colors.black, width: 1),
);

class AnaSayfaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AnaSayfaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: const _ProfilFotografi(),
      titleSpacing: 0,
      title: const _AramaKutusu(),
      actions: const [_MesajButonu()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ProfilFotografi extends StatelessWidget {
  const _ProfilFotografi();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade300,
        child: const Icon(Icons.person, color: Colors.black, size: 20),
      ),
    );
  }
}

class _AramaKutusu extends StatelessWidget {
  const _AramaKutusu();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Arama yap',
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          prefixIcon: const Icon(Icons.search, size: 18, color: Colors.black),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          border: _aramaKutusuKenarligi,
          enabledBorder: _aramaKutusuKenarligi,
          focusedBorder: _aramaKutusuKenarligi,
        ),
      ),
    );
  }
}

class _MesajButonu extends StatelessWidget {
  const _MesajButonu();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 14, left: 10),
      child: SvgPicture.asset(
        'assets/svg/mesaj.svg',
        width: 24,
        height: 24,
        colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
      ),
    );
  }
}
