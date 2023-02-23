import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:today_weather/models/weather_data.dart';

class WeatherItem extends StatelessWidget {
  final WeatherData weather;
  // final Color color;

  WeatherItem({
    required this.weather,
    // required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
    color: Color.fromARGB(255, 63, 64, 65),
    // decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //   ),
    margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              weather.name,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              weather.main,
              style: TextStyle(color: Colors.white, fontSize: 24.0),
            ),
            Text(
              '${weather.temp.toString()}°F',
              style: TextStyle(color: Colors.white),
            ),
            Image.network(
              'https://openweathermap.org/img/w/${weather.icon}.png',
            ),
            Text(
              DateFormat.yMMMd().format(weather.date),
              style: TextStyle(color: Colors.white),
            ),
            Text(
              DateFormat.Hm().format(weather.date),
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
