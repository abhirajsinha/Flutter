import 'package:flutter/material.dart';

class HourlycardInfo extends StatelessWidget {
  final String time;
  final IconData icon;
  final String temp;

  const HourlycardInfo(
      {super.key, required this.icon, required this.temp, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // weather forecast cards        
        SizedBox(
          width: 100,
          child: Card(
            elevation: 7,
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(13)),
              child: Column(
                children: [
                  Text(
                    time,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Icon(
                    icon,
                    size: 32,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    temp,
                    // style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
