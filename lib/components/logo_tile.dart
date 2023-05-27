import 'package:flutter/material.dart';

class LogoTile extends StatelessWidget {
  final String imageLogo;

  const LogoTile({super.key, required this.imageLogo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFEEEEEE)
      ),
      child: Image.asset(
        imageLogo,
        height: 40,
      ),
    );
  }
}
