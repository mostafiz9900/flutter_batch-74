

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountView extends StatelessWidget {
  const AccountView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       alignment: Alignment.center,
      child: Text('Account Page'),
      width: double.infinity,
      height: double.infinity,
      color: Colors.blueGrey.shade300,
    );
  }
}