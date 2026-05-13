import 'package:flutter/material.dart';

class BildirimKartiWidget extends StatelessWidget {
  final String isim;
  final String aciklama;
  final String ortakBaglanti;
  final String zaman;
  final String fotografUrl;

  const BildirimKartiWidget({
    super.key,
    required this.isim,
    required this.aciklama,
    required this.ortakBaglanti,
    required this.zaman,
    required this.fotografUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 14,
          ),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(fotografUrl),
              ),

              const SizedBox(width: 12),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey.shade800,
                          height: 1.35,
                        ),

                        children: [
                          TextSpan(
                            text: isim,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.black87,
                            ),
                          ),

                          const TextSpan(
                            text:
                                " adlı kullanıcıyı tanıyor olabilirsiniz. Ağınıza ekleyin.",
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      aciklama,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                        height: 1.3,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: [
                        Icon(
                          Icons.people_alt_outlined,
                          size: 18,
                          color: Colors.grey.shade700,
                        ),

                        const SizedBox(width: 4),

                        Text(
                          ortakBaglanti,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(width: 10),

              Column(
                children: [
                  Text(
                    zaman,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Icon(
                    Icons.more_vert,
                    color: Colors.grey.shade700,
                  ),
                ],
              ),
            ],
          ),
        ),

        Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey.shade300,
        ),
      ],
    );
  }
}