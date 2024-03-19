import 'dart:ui';
import 'package:flutter/material.dart';

class WeatherForecastinfo extends StatelessWidget {
  const WeatherForecastinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //used sizebox because we have used width property
      width: double.infinity,
      child: Card(
        elevation: 10,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    '300.9 F',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Icon(
                    Icons.cloud,
                    size: 64,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Rain',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
