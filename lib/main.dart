import 'package:flutter/material.dart';

import 'package:sample_weather_app/views/home_view.dart';
import 'package:sample_weather_app/Views/setting_view.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (_) => HomeView(),
        '/setting': (_) => SettingView(),
      },
    );
  }
}
