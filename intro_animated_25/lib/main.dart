import 'package:flutter/material.dart';
import 'package:intro_animated_25/anim/chain_animation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: Duration(milliseconds: 1800), vsync: this);

    // animation = Tween(begin: 0.0, end: 100.0).animate(controller!)
    //   ..addListener(() {
    //     setState(() {
    //       print('run tween');
    //     });
    //   });
    animation = CurvedAnimation(parent: controller!, curve: Curves.easeIn)
      ..addStatusListener((status) {
        print(status);
        if (status == AnimationStatus.completed) {
          controller!.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller!.forward();
        }
      });
    // ..addListener(() {
    //   setState(() {
    //     debugPrint('Running ${controller!.value}');
    //   });
    // });

    // animation!.addListener(() {
    //   setState(() {
    //     debugPrint('Running ${controller!.value}');
    //   });
    // });

    controller!.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation controller with Tween '),
      ),
      body: Center(
          child: ChaniAnimation(
        animation: animation!,
      )),
      //  Center(
      //   child: Text(
      //     'Hello Animation',
      //     style: TextStyle(fontSize:  28.0 * animation!.value),
      //   ),
      // ),
    );
  }
}
