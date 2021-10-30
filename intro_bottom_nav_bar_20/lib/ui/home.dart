
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Home Page'),
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow.shade300,
      
    );
  }
}