import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color(0xffFFFFFF),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          BottomNavItem(
            text: 'الرئيسية',
            iconPath: 'Asset/image/home 04.png',
            color: const Color(0xFF8A8A8A),
          ),
          BottomNavItem(
            text: 'المتجر',
            iconPath: 'Asset/image/store.png',
            color: const Color(0xFF8A8A8A),
          ),
          BottomNavItem(
            text: 'خدماتنا',
            iconPath: 'Asset/image/user-circle.png',
            color: const Color(0xFFF78E32),
          ),
          BottomNavItem(
            text: 'الرسائل',
            iconPath: 'Asset/image/chat 2.png',
            color: const Color(0xFF8A8A8A),
          ),
          BottomNavItem(
            text: 'حسابي',
            iconPath: 'Asset/image/user-circle.png',
            color: const Color(0xFF8A8A8A),
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String text;
  final String iconPath;
  final Color color;

  BottomNavItem(
      {required this.text, required this.iconPath, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          iconPath,
          width: 32,
          height: 32,
          color: color,
        ),
        const SizedBox(height: 2),
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: color,
          ),
        ),
      ],
    );
  }
}
