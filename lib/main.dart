import 'package:flutter/material.dart';
import 'package:mapdecoding/Secondamap.dart';

void main()
{
  runApp(MaterialApp(home: secondmap(),));
}

class mymap extends StatefulWidget {
  const mymap({Key? key}) : super(key: key);

  @override
  State<mymap> createState() => _mymapState();
}

class _mymapState extends State<mymap> {

  Map map1 = {
    "id":"487349",
    "name":"Pooja Bhaumik",
    "score" : 1000
  };

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Welcome mm = Welcome.fromJson(map1);

    print("ID:::${mm.id}   NAME::::${mm.name}");

  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Welcome {
  // "id":"487349",
  // "name":"Pooja Bhaumik",
  // "score" : 1000

  String id;
  String name;
  int score;


  Welcome(this.id, this.name, this.score);

  factory Welcome.fromJson(Map map1) {
    return Welcome(map1['id'], map1['name'], map1['score']);
  }
}
