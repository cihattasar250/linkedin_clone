import 'package:flutter/material.dart';

class AltNavigationBar extends StatelessWidget {
  const AltNavigationBar({
    super.key,
    required this.seciliIndex,
    required this.onTap,
  });

  final int seciliIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: seciliIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontSize: 10),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
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
