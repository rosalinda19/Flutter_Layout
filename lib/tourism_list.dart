
import 'package:flutter/material.dart';
import 'package:prak3/detail_screen.dart';
import 'package:prak3/model/tourism_place.dart';
import 'package:prak3/list_item.dart';
import 'package:prak3/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

class TourismList extends StatefulWidget{
  const TourismList({Key? key}) : super (key: key);
  //  const TourismList({Key? key,
  //    required this.doneTourismPlaceList
  // }) : super(key: key);

  @override
  _TourismListState createState() => _TourismListState();
}

class _TourismListState extends State<TourismList> {
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/image/submarin.jpg',
      image1: 'assets/image/monkasel_3.jpg',
      image2: 'assets/image/monkasel_2.jpg',
      image3: 'assets/image/monkasel_1.jpg',
      desc: 'Museum Inside a decommissioned Russian war submarine tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/image/kelenteng.jpg',
      image1: 'assets/image/klenteng_1.jpg',
      image2: 'assets/image/kelenteng_2.jpg',
      image3: 'assets/image/kelenteng_3.jpg',
      desc: 'Kelenteng Sanggar Agung atau Klenteng Hong San Tang adalah sebuah klenteng di Kota Surabaya. Alamatnya berada di Jalan Sukolilo Nomor 100, Pantai Ria Kenjeran, Surabaya. Kuil ini, selain menjadi tempat ibadah bagi pemeluk Tridharma, juga menjadi tempat tujuan wisata bagi para wisatawan.',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/image/sampoerna.jpg',
      image1: 'assets/image/sampoerna_1.jpg',
      image2: 'assets/image/sampoerna_2.jpg',
      image3: 'assets/image/sampoerna_3.jpg',
      desc: 'House of Sampoerna adalah sebuah museum tembakau dan markas besar Sampoerna yang terletak di Surabaya. Gaya arsitektur dari bangunan utamanya yang dipengaruhi oleh gaya kolonial Belanda dibangun pada 1862 dan sekarang menjadi situs sejarah.',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/image/pahlawan.jpg',
      image1: 'assets/image/pahlawan_1.jpg',
      image2: 'assets/image/pahlawan_2.jpg',
      image3: 'assets/image/pahlawan_3.jpg',
      desc: 'Tugu Pahlawan didirikan pada tanggal 10 November 1951 dan diresmikan pada tanggal 10 November 1952 oleh Presiden RI, Ir. Soekarno, dengan tujuan untuk mengenang sejarah perjuangan para pahlawan kemerdekaan bangsa Indonesia dalam pertempuran 10 Nopember 1945 di Surabaya.',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/image/sby.jpg',
      image1: 'assets/image/sby_1.jpg',
      image2: 'assets/image/sby_2.jpg',
      image3: 'assets/image/sby_4.jpg',
      desc: 'Patung Sura dan Baya adalah sebuah patung yang merupakan lambang kota Surabaya. Patung ini berada di depan Kebun Binatang Surabaya. Patung ini terdiri atas dua hewan ini yang menjadi inspirasi nama kota Surabaya: ikan sura dan baya.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                  isDone: data.doneTourismPlaceList.contains(place),
                  onCheckboxClick: (bool? value) {
                    data.complete(place, value!);
                  },
                );
              }
          ),

      );
    },
    itemCount: tourismPlaceList.length,
    );
  }
}

