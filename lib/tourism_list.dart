import 'package:flutter/material.dart';
import 'package:percobaan2/main_screen.dart';
import 'package:percobaan2/model/tourism_place.dart';
import 'package:percobaan2/list_item.dart';
import 'package:percobaan2/detail_screen.dart';
import 'package:percobaan2/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget {
  const TourismList({Key? key, }) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> doneTourismPlaceList = [];
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
        name: 'Simpang Lima Gumul',
        location: 'Kab.Kediri Jawa Timur',
        imageAsset: 'assets/images/slg.jpg',
        day: 'Setiap Hari',
        time: '09.00 - 22.00',
        price: 'free'),
    TourismPlace(
        name: 'Taman Joyoboyo',
        location: 'Kab.Kediri, Jawa Timur',
        imageAsset: 'assets/images/wisata1.jfif',
        day: 'Setiap Hari',
        time: '09.00 - 22.00',
        price: 'free'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kota Kediri"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Consumer<DoneTourismProvider>(
              builder: (context, DoneTourismProvider data, widget) {
                return ListItem(
                  place: place,
                  isDone: doneTourismPlaceList.contains(place),
                  onCheckBoxClick: (bool? value) {
                    setState(() {
                      if (value != null) {
                        value
                            ? doneTourismPlaceList.add(place)
                            : doneTourismPlaceList.remove(place);
                      }
                    });
                  },
                );
              },
            ),
          );
        },
        itemCount: tourismPlaceList.length,
      ),
    );
  }
}
