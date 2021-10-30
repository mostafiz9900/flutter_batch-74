
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       alignment: Alignment.center,
      child: Text('Search Page'),
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue.shade300,
    );
  }
}