
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget { 
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Ui'),),
      body: Column(
            children: [ 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Responsive: Typically, a responsive app has had its layout tuned for the available screen size. Often this means (for example), re-laying out the UI if the'),
                ),

              Container(                 
                 height: 200.0,
                 width: 350.0,  
                 decoration:BoxDecoration(
                        color:Color(0xFFD48104) ,
                        borderRadius: BorderRadius.circular(20.0)
                 )   
              ),
            
            ],
          )
    
    );
  }
}