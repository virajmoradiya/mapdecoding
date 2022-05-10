import 'package:flutter/material.dart';

class secondmap extends StatefulWidget {
  const secondmap({Key? key}) : super(key: key);

  @override
  State<secondmap> createState() => _secondmapState();
}

class _secondmapState extends State<secondmap> {

Map map = {
  "city": "Mumbai",
  "streets": [
    "address1",
    "address2"
    "address4"
    "address3"
    "address5"
    "address6"
  ]
};


@override
  void initState() {
    // TODO: implement initState
    super.initState();

    Welcom2 mmm = Welcom2.fromJson(map);

    mmm.streets;
    print(mmm.streets[0]);

  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Welcom2 {
  // "city": "Mumbai",
  // "streets": [
  // "address1",
  // "address2"
  // ]

  String city;
 List<String> streets;


  Welcom2(this.city, this.streets);

  factory Welcom2.fromJson(Map map) {

    return Welcom2(map['city'], map['streets']);
  }
}
