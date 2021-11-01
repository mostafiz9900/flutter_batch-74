import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(        
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned:true ,
            expandedHeight:170.0 ,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Home Page'),
              background: FlutterLogo(),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context,index){
                return ListTile(                  
                  leading: Text('${index}'),
                  title: Text('Name : Mostafizur'),
                  subtitle: Text('Email: mostafiz9900@gmail.com'),
                  trailing: Icon(Icons.phone),
                
                );
              },
              childCount: 20
            )
            )
        ],

      ),

      
    );
  }
}