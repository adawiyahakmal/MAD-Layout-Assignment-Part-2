import 'package:flutter/material.dart';

class Item2 {
  String name;
  String image;
  bool isOn;

  Item2({
    required this.name,
    required this.image,
    required this.isOn,
  });
}

class Part3Body extends StatelessWidget {
  final List<Item2> gridItem2;
  final Function onToggle;

  Part3Body(this.gridItem2, this.onToggle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: Colors.blue.shade200),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 6.0,
        crossAxisSpacing: 6.0,
        childAspectRatio: 1.1,
        children: gridItem2
            .map((gridItem) => Container(
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        InkWell(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(9.0),
                            child: Image.asset(
                              'assets/${gridItem.image}',
                              width: 150.0,
                              height: 150.0,
                            ),
                          ),
                          onTap: () => onToggle(gridItem.name),
                        ),
                        Spacer(),
                        if (gridItem.isOn)
                          Icon(Icons.power_settings_new,
                              color: Colors.green, size: 50.0),
                        if (!gridItem.isOn)
                          Icon(Icons.power_settings_new,
                              color: Colors.red, size: 50.0),
                      ]),
                      Spacer(),
                      Text(gridItem.name,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                      SizedBox(height: 4.0),
                      Text(
                        '• ${gridItem.isOn ? 'ON' : 'OFF'}',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: gridItem.isOn ? Colors.green : Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
