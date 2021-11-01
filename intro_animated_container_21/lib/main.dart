import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CustomAnimatedContainer(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating: true,
          pinned: true,
          snap: false,
          expandedHeight: 160.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text('Home Page'),
            background: FlutterLogo(),
          ),
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (context, index) {
            return ListTile(
              leading: Text('${index.toString()}'),
              title: Text('Mostafiz'),
              subtitle: Text('00344343'),
              trailing: Icon(Icons.phone),
            );
          },
          childCount: 20,
        ))
      ],
    ));
  }
}

class CustomAnimatedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomAnimatedContainer'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Text('CustomAnimatedContainer'),
            ),
            CoustomContainer()
          ],
        ),
      ),
    );
  }
}

class CoustomContainer extends StatefulWidget {
  const CoustomContainer({Key? key}) : super(key: key);

  @override
  State<CoustomContainer> createState() => _CoustomContainerState();
}

class _CoustomContainerState extends State<CoustomContainer> {
      bool selected = false;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      
      },
      child: AnimatedContainer(
        width: selected ? 100.0 : 200.0,
        height:selected ? 200.0 : 100.0,
        color: selected ?Colors.amber:Colors.red.shade400,
        duration: Duration(seconds: 4),
        curve: Curves.fastOutSlowIn,
        child: FlutterLogo(),
      ),
    );
  }
}
