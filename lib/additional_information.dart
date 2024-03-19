import 'package:flutter/material.dart';

class AdditionalInformation extends StatelessWidget {
  final IconData icon;
  final String type;
  final String speed;

  const AdditionalInformation(
      {super.key, required this.icon, required this.type, required this.speed});

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Icon(icon, size: 32),
        const SizedBox(
          height: 8,
        ),
        Text(type),
        const SizedBox(
          height: 8,
        ),
        Text(
          speed,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ));
  }
}
