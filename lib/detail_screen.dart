import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(

          children: <Widget> [
            Image.asset('assets/image/submarin.jpg',
            ),
            Container(
                margin: EdgeInsets.only(left: 2.0),
                child: Text(
                  "Surabaya Submarine Monument",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
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
              child: const Text(
                'Museum inside a decommissioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.',
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
                      child: Image.network(
                          'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/image/monkasel_1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/image/monkasel_2.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset('assets/image/monkasel_3.jpg'),
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
