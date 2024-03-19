import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weather_app/additional_information.dart';
import 'package:weather_app/hourlycard_info.dart';
import 'package:weather_app/weather_forecastinfo.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Weather App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                debugPrint('Clicked');
              },
              icon: const Icon(Icons.refresh))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // main card
            WeatherForecastinfo(),

            SizedBox(
              height: 20,
            ),

            // weather forecast
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Weather forecast',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      HourlycardInfo(
                          time: '12:00', temp: '301.12 k', icon: Icons.cloud),
                      HourlycardInfo(
                          time: '12:00', temp: '301.12 k', icon: Icons.cloud),
                      HourlycardInfo(
                          time: '12:00', temp: '301.12 k', icon: Icons.cloud),
                      HourlycardInfo(
                          time: '12:00', temp: '301.12 k', icon: Icons.cloud),
                      HourlycardInfo(
                          time: '12:00', temp: '301.12 k', icon: Icons.cloud),
                    ])),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            // Additional Information
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Additional Information',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(
              height: 16,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AdditionalInformation(
                  icon: Icons.water_drop,
                  type: 'Humidity',
                  speed: '91',
                ),
                AdditionalInformation(
                  icon: Icons.air,
                  type: 'Wind Speed',
                  speed: '341',
                ),
                AdditionalInformation(
                  icon: Icons.beach_access,
                  type: 'Pressure',
                  speed: '991',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
