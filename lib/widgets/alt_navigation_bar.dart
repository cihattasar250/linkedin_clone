import 'package:flutter/material.dart';

class AltNavigationBar extends StatelessWidget {
  const AltNavigationBar({
    super.key,
    required int seciliIndex,
    required ValueChanged<int> onTap,
  }) : seciliSekme = seciliIndex,
       sekmeSecildi = onTap;

  final int seciliSekme;
  final ValueChanged<int> sekmeSecildi;

  @override
  Widget build(BuildContext context) {
    const yaziStili = TextStyle(fontSize: 10);

    return BottomNavigationBar(
      currentIndex: seciliSekme,
      onTap: sekmeSecildi,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: yaziStili,
      unselectedLabelStyle: yaziStili,
      iconSize: 22,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Ana Sayfa'),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outline),
          label: 'Ağım',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: 'Gönder',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_none),
          label: 'Bildirim',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.work_outline), label: 'İş'),
      ],
    );
  }
}
