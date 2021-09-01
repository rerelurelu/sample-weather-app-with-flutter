import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/setting');
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _cloudIcon(),
            _temprature(),
          ],
        ),
      ),
    );
  }

  _temprature() {
    return Text(
      '-10',
      style: TextStyle(
        fontSize: 80,
        fontWeight: FontWeight.w100,
      ),
    );
  }

  _cloudIcon() {
    return Padding(
      padding: const EdgeInsets.all(28),
      child: Icon(
        Icons.cloud,
        size: 80,
      ),
    );
  }
}
