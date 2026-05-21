import 'package:flutter/material.dart';

class DavetKarti extends StatelessWidget {
  final String isim;
  final String unvan;
  final String ortakBaglanti;
  final String zaman;

  const DavetKarti({
    super.key,
    required this.isim,
    required this.unvan,
    required this.ortakBaglanti,
    required this.zaman,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(12),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CircleAvatar(
                radius: 38,
                backgroundColor: Colors.grey.shade300,

                child: const Icon(
                  Icons.person,
                  color: Colors.black54,
                  size: 30,
                ),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            isim,
                            style: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        const SizedBox(width: 4),

                        Icon(
                          Icons.verified,
                          size: 18,
                          color: Colors.grey.shade700,
                        ),
                      ],
                    ),

                    const SizedBox(height: 3),

                    Text(
                      unvan,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 3),

                    Text(
                      ortakBaglanti,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(
                      zaman,
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 8),

              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,

                      border: Border.all(color: Colors.grey, width: 1.4),
                    ),

                    child: const Icon(
                      Icons.close,
                      size: 25,
                      color: Colors.grey,
                    ),
                  ),

                  const SizedBox(width: 10),

                  Container(
                    width: 40,
                    height: 40,

                    decoration: const BoxDecoration(shape: BoxShape.circle),

                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                        border: Border.all(
                          color: const Color(0xFF0A66C2),
                          width: 1.8,
                        ),
                      ),

                      child: const Icon(
                        Icons.check,
                        size: 25,
                        color: Color(0xFF0A66C2),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
      ],
    );
  }
}
