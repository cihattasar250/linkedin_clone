import 'package:flutter/material.dart';

class FiltreChipWidget extends StatelessWidget {
  const FiltreChipWidget({super.key, required this.yazi, this.secili = false});

  final String yazi;
  final bool secili;

  @override
  Widget build(BuildContext context) {
    const seciliRenk = Color(0xFF01754F);

    // Secili olan filtre digerlerinden biraz daha belirgin duruyor.
    final arkaPlanRengi = secili ? seciliRenk : Colors.white;
    final kenarRengi = secili ? seciliRenk : Colors.grey.shade400;
    final yaziRengi = secili ? Colors.white : Colors.grey.shade700;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 9),
      decoration: BoxDecoration(
        color: arkaPlanRengi,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: kenarRengi),
      ),
      child: Text(
        yazi,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: yaziRengi),
      ),
    );
  }
}
