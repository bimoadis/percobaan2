import 'package:flutter/material.dart';
import 'package:percobaan2/model/tourism_place.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(place.imageAsset),
            Container(
              margin: const EdgeInsets.only(top: 16.0),
              child: Text(
                place.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Oxygen',
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Icon(Icons.calendar_today),
                      Text('Open Everyday'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.access_alarm),
                      Text('24 Hours'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.money_off),
                      Text('Free'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                "Kabupaten Kediri adalah sebuah wilayah kabupaten yang berada di provinsi Jawa Timur, Indonesia. Sebelumnya, ibu kotanya berada di Kota Kediri meskipun pemindahan ibu kota ke kecamatan Pare telah lama direncanakan dan hingga saat ini dibatalkan. Sejak tanggal 23 Februari 2023, ibukota Kabupaten Kediri secara sah berada di Kecamatan Ngasem dan dinamakan Pamenang.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, fontFamily: 'Oxygen'),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(
                              'https://viuit.id/wp-content/uploads/2022/06/image-32.png'),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          image: NetworkImage(
                              'https://asset.kompas.com/crops/TFh_rP-WoMhEfJVAjd-y99Kw2r8=/0x0:0x0/750x500/data/photo/2021/12/31/61ce9c35d9e5a.jpg'),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
