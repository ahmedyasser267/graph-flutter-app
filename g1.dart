import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_plot/flutter_plot.dart';

class ahmed extends StatefulWidget {
  ahmed({Key? key}) : super(key: key);

  @override
  State<ahmed> createState() => _ahmedState();
}

class _ahmedState extends State<ahmed> {
  final List<Point> data = [
    const Point(21.0, 19.0),
    const Point(3.0, 7.0),
    const Point(8.0, 9.0),
    const Point(11.0, 14.0),
    const Point(18.0, 17.0),
    const Point(7.0, 8.0),
    const Point(-4.0, -4.0),
    const Point(6.0, 12.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Card(
            child: new Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: new Text('Super Neat Plot'),
                ),
                new Container(
                  child: new Plot(
                    height: 200.0,
                    data: data,
                    gridSize: new Offset(2.0, 2.0),
                    style: new PlotStyle(
                      pointRadius: 3.0,
                      outlineRadius: 1.0,
                      primary: Colors.white,
                      secondary: Colors.orange,
                      textStyle: new TextStyle(
                        fontSize: 8.0,
                        color: Colors.blueGrey,
                      ),
                      axis: Colors.blueGrey[600],
                      gridline: Colors.blueGrey[100],
                    ),
                    padding: const EdgeInsets.fromLTRB(40.0, 12.0, 12.0, 40.0),
                    xTitle: 'My X Title',
                    yTitle: 'My Y Title',
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: new Text('Super Neat Plot'),
                ),
                new Container(
                  child: new Plot(
                    height: 200.0,
                    data: data,
                    gridSize: new Offset(2.0, 2.0),
                    style: new PlotStyle(
                      axisStrokeWidth: 2.0,
                      pointRadius: 3.0,
                      outlineRadius: 1.0,
                      primary: Colors.yellow,
                      secondary: Colors.red,
                      trace: true,
                      traceStokeWidth: 3.0,
                      traceColor: Colors.blueGrey,
                      traceClose: true,
                      showCoordinates: true,
                      textStyle: new TextStyle(
                        fontSize: 8.0,
                        color: Colors.grey,
                      ),
                      axis: Colors.blueGrey[600],
                      gridline: Colors.blueGrey[100],
                    ),
                    padding: const EdgeInsets.fromLTRB(40.0, 12.0, 12.0, 40.0),
                    //xTitle: 'My X Title',
                    //yTitle: 'My Y Title',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
