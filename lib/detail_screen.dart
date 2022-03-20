import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:prak3/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
                margin: EdgeInsets.only(left: 2.0),
                child: Text(
                  place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget> [
                  Column(
                    children: const <Widget> [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: const <Widget> [
                      Icon(Icons.lock_clock),
                      Text('08.00 - 16.00'),
                    ],
                  ),
                  Column(
                    children: const <Widget> [
                      Icon(Icons.money),
                      Text('Rp 10.000'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                place.desc,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                          place.image1),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(place.image2),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(place.image3),
                    ),
                  ],
                )
            )
          ],
        ),
      ),
    );
  }
}
