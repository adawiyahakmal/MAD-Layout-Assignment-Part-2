import 'package:flutter/material.dart';
import 'tab1.dart';
import 'tab2.dart';
import 'tab3.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  GridState createState() => GridState();
}

class GridState extends State<MyApp> {
  List<Item> gridItem = [
    Item(
      name: 'LIVING ROOM',
      isOn: false,
      image: 'livingroom.png',
    ),
    Item(
      name: 'DINING ROOM',
      isOn: false,
      image: 'diningroom.png',
    ),
    Item(
      name: 'MASTER BEDROOM',
      isOn: false,
      image: 'bedroom.png',
    ),
    Item(
      name: 'KITCHEN',
      isOn: false,
      image: 'kitchen.png',
    ),
    Item(
      name: 'PORCH LIGHT SWITCH',
      isOn: false,
      image: 'porchlight.png',
    ),
    Item(
      name: 'GATE LIGHT SWITCH',
      isOn: false,
      image: 'gatelamp.png',
    ),
  ];

  List<Item2> gridItem2 = [
    Item2(
      name: 'FAN',
      isOn: false,
      image: 'fan.png',
    ),
    Item2(
      name: 'LAMP',
      isOn: false,
      image: 'lamp.png',
    ),
    Item2(
      name: 'AIRCOND',
      isOn: false,
      image: 'aircond.png',
    ),
    Item2(
      name: 'TELEVISION',
      isOn: false,
      image: 'tv.png',
    ),
  ];

  List<Item3> gridItem3 = [
    Item3(
      name: 'FAN',
      isOn: false,
      image: 'fan.png',
    ),
    Item3(
      name: 'LAMP',
      isOn: false,
      image: 'lamp.png',
    ),
    Item3(
      name: 'AIRCOND',
      isOn: false,
      image: 'aircond.png',
    ),
    Item3(
      name: 'TELEVISION',
      isOn: false,
      image: 'tv.png',
    ),
  ];

  void toggleState(String name) {
    int gridIndex = gridItem.indexWhere((grid) => grid.name == name);
    if (gridIndex != -1) {
      setState(() {
        gridItem[gridIndex].isOn = !gridItem[gridIndex].isOn;
      });
    }
  }

  void toggleState2(String name) {
    int gridIndex = gridItem2.indexWhere((grid) => grid.name == name);
    if (gridIndex != -1) {
      setState(() {
        gridItem2[gridIndex].isOn = !gridItem2[gridIndex].isOn;
      });
    }
  }

  void toggleState3(String name) {
    int gridIndex = gridItem3.indexWhere((grid) => grid.name == name);
    if (gridIndex != -1) {
      setState(() {
        gridItem3[gridIndex].isOn = !gridItem3[gridIndex].isOn;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Internet of Things (IoT) Devices',
      theme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('MY HOME >'),
            bottom: TabBar(
              indicatorColor: Colors.yellow,
              indicatorWeight: 3,
              labelStyle: TextStyle(fontSize: 20),
              tabs: [
                Tab(text: 'All'),
                Tab(text: 'Living Room'),
                Tab(text: 'Kitchen'),
              ],
            ),
          ),
          body: TabBarView(children: [
            Part2Body(gridItem, toggleState),
            Part3Body(gridItem2, toggleState2),
            Part4Body(gridItem3, toggleState3),
          ]),
        ),
      ),
    );
  }
}
