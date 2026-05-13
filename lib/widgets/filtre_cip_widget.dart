import 'package:flutter/material.dart';

class FiltreChipWidget extends StatelessWidget {
  final String yazi;
  final bool secili;

  const FiltreChipWidget({
    super.key,
    required this.yazi,
    this.secili = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),

      decoration: BoxDecoration(
        color: secili
            ? const Color(0xFF01754F)
            : Colors.white,

        borderRadius: BorderRadius.circular(30),

        border: Border.all(
          color: secili
              ? const Color(0xFF01754F)
              : Colors.grey.shade400,
        ),
      ),

      child: Text(
        yazi,

        style: TextStyle(
          fontSize: 15,

          color: secili
              ? Colors.white
              : Colors.grey.shade700,
        ),
      ),
    );
  }
}