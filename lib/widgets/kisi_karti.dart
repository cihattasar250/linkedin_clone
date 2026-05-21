import 'package:flutter/material.dart';

class AgimSayfasi extends StatelessWidget {
  const AgimSayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        backgroundColor: Colors.white,

        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Theme(
                  data: Theme.of(
                    context,
                  ).copyWith(dividerColor: Colors.transparent),

                  child: TabBar(
                    indicatorColor: const Color(0xFF01754F),
                    indicatorWeight: 3,

                    labelColor: const Color(0xFF01754F),
                    unselectedLabelColor: Colors.black54,

                    labelPadding: EdgeInsets.zero,

                    tabs: [
                      Tab(
                        height: 46,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            const Text(
                              "Büyüt",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),

                            const SizedBox(width: 6),
                          ],
                        ),
                      ),

                      const Tab(
                        height: 46,

                        child: Text(
                          "Ağınızdan haberler",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(height: 1, thickness: 1, color: Colors.grey.shade300),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 14,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      const Text(
                        "Davetler (10)",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      const Icon(
                        Icons.arrow_forward,
                        size: 22,
                        color: Colors.black87,
                      ),
                    ],
                  ),
                ),

                Divider(height: 1, thickness: 1, color: Colors.grey.shade300),

                const DavetKarti(
                  isim: "Eren Yalçın",
                  unvan: "Mobile App Developer",
                  ortakBaglanti: "8 ortak bağlantı",
                  zaman: "9 dakika önce",
                ),

                const DavetKarti(
                  isim: "Ahmet Kaya",
                  unvan: "UI/UX Designer",
                  ortakBaglanti: "12 ortak bağlantı",
                  zaman: "1 saat önce",
                ),

                Divider(height: 10, thickness: 10, color: Colors.grey.shade300),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      const Text(
                        "Sizin için önerilenler",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      Text(
                        "Tümünü gör",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 320,

                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    padding: const EdgeInsets.symmetric(horizontal: 12),

                    children: const [
                      KisiKartWidget(
                        isim: "Ümit UZUNER",
                        unvan: "Yazılım Destek Uzmanı",
                        fotografUrl: "https://i.pravatar.cc/300",
                      ),

                      SizedBox(width: 12),

                      KisiKartWidget(
                        isim: "Mehmet Yılmaz",
                        unvan: "Flutter Developer",
                        fotografUrl: "https://i.pravatar.cc/301",
                      ),

                      SizedBox(width: 12),

                      KisiKartWidget(
                        isim: "Ayşe Demir",
                        unvan: "UI Designer",
                        fotografUrl: "https://i.pravatar.cc/302",
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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

class KisiKartWidget extends StatelessWidget {
  final String isim;
  final String unvan;
  final String fotografUrl;

  const KisiKartWidget({
    super.key,
    required this.isim,
    required this.unvan,
    required this.fotografUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,

      decoration: BoxDecoration(
        color: Colors.white,

        borderRadius: BorderRadius.circular(16),

        border: Border.all(color: Colors.grey.shade300),
      ),

      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,

            children: [
              Container(
                height: 55,

                decoration: BoxDecoration(
                  color: const Color(0xFFC7D3D6),

                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
              ),

              Positioned(
                top: 14,
                left: 0,
                right: 0,

                child: CircleAvatar(
                  radius: 38,

                  backgroundColor: Colors.white,

                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(fotografUrl),
                  ),
                ),
              ),

              Positioned(
                top: 10,
                right: 10,

                child: Container(
                  width: 34,
                  height: 34,

                  decoration: const BoxDecoration(
                    color: Color(0xFF2F3437),
                    shape: BoxShape.circle,
                  ),

                  child: const Icon(Icons.close, color: Colors.white, size: 22),
                ),
              ),
            ],
          ),

          const SizedBox(height: 62),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),

            child: Text(
              isim,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,

              textAlign: TextAlign.center,

              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),

          const SizedBox(height: 4),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child: Text(
              unvan,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,

              textAlign: TextAlign.center,

              style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
            ),
          ),

          const SizedBox(height: 30),

          Text(
            "Profiliniz esas alınmıştır",
            textAlign: TextAlign.center,

            style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
          ),

          const SizedBox(height: 14),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),

            child: Container(
              width: double.infinity,
              height: 40,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),

                border: Border.all(color: const Color(0xFF0A66C2), width: 1.8),
              ),

              child: const Center(
                child: Text(
                  "Bağlantı kur",
                  style: TextStyle(
                    color: Color(0xFF0A66C2),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
