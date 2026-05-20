import 'package:flutter/material.dart';

class FiltreChipWidget extends StatelessWidget {
  final String yazi;
  final bool secili;

  const FiltreChipWidget({super.key, required this.yazi, this.secili = false});

  @override
  Widget build(BuildContext context) {
    const seciliRenk = Color(0xFF01754F);
    final arkaPlanRengi = secili ? seciliRenk : Colors.white;
    final kenarRengi = secili ? seciliRenk : Colors.grey.shade400;
    final yaziRengi = secili ? Colors.white : Colors.grey.shade700;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: arkaPlanRengi,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: kenarRengi),
      ),
      child: Text(yazi, style: TextStyle(fontSize: 15, color: yaziRengi)),
    );
  }
}
