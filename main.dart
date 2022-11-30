import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_plot/flutter_plot.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

TextEditingController controller = TextEditingController(text: "0");
TextEditingController controller1 = TextEditingController(text: "0");
TextEditingController controller2 = TextEditingController(text: "0");
TextEditingController controller3 = TextEditingController(text: "0");
TextEditingController controller4 = TextEditingController(text: "0");
TextEditingController controller5 = TextEditingController(text: "0");
TextEditingController controller6 = TextEditingController(text: "0");
TextEditingController controller7 = TextEditingController(text: "0");
class _MyHomePageState extends State<MyHomePage> {
  List<Point> data = [
    Point(int.parse(controller.text), int.parse(controller1.text)),
    Point(int.parse(controller2.text), int.parse(controller3.text))
  ];
    List<Point> Bata = [Point(int.parse(controller4.text), int.parse(controller5.text)),
    Point(int.parse(controller6.text), int.parse(controller7.text))];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter plot'),
          backgroundColor: Color.fromRGBO(6, 57, 112, 30),
        ),
        body: ListView(children: <Widget>[
          Row(
            children: [
              Expanded(child:   Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller,

                  // onChanged: controller,
                ),
              ),),
              Expanded(child:   Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller1,
                  // onChanged: controller,
                ),
              ),),
            ],
          ),
          Row(
            children: [
              Expanded(child:   Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller2,
                  // onChanged: controller,
                ),
              ),),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller3,
                  // onChanged: controller,
                ),
              ),),
            ],
          ),
          Row(
            children: [
              Expanded(child:   Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: controller4,
                  keyboardType: TextInputType.number,

                  // onChanged: controller,
                ),
              ),),
              Expanded(child:   Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: controller5,
                  keyboardType: TextInputType.number,
                  // onChanged: controller,
                ),
              ),),
            ],
          ),
          Row(
            children: [
              Expanded(child:   Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller6,
                  // onChanged: controller,
                ),
              ),),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: controller7,
                  // onChanged: controller,
                ),
              ),),
            ],
          ),
          TextButton(
            onPressed: () => setState(() {
              data = [
                Point(int.parse(controller.text), int.parse(controller1.text)),
                Point(int.parse(controller2.text), int.parse(controller3.text))
              ];
              Bata = [Point(int.parse(controller4.text), int.parse(controller5.text)),
                Point(int.parse(controller6.text), int.parse(controller7.text))];

            }),
            child: Text('click'),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            child: Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: new Text('The first equation'),
                ),
                new Container(
                  child: new Plot(
                    height: 200.0,
                    data: Bata,

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
          SizedBox(
            height: 20,
          ),
          Card(
            child: Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: new Text('The second equation'),
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
          SizedBox(
            height: 20,
          ),
          Card(
            child: Column(
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: new Text('The first equation + the second + the point of intersection'),
                ),
                new Container(
                  child: new Plot(
                    height: 200.0,
                    data: data + Bata,
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
        ]
        )
    );
  }
}
