import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Orientation getOrg = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(title: Text('Responsive UI')),
      body: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Column(
            children: [
              Container(
                  child: Text('Main method on chorome in debug mode'),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                height: 250.0,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              Container(
                child: Text('Main method on chorome in debug mode'),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                height: 250.0,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              
            ],
          );
        } else {
          return Row(
            children: [
              ElevatedButton(
                onPressed: null, child:Text('Button'),
                style: ElevatedButton.styleFrom(
                  visualDensity: VisualDensity.compact
                ),
                ),
              Container(
                  child: Text('Main method on chorome in debug mode'),
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                height: 250.0,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                height: 250.0,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(20.0)),
              )
            ],
          );
        }
      }),
    );
  }
}
