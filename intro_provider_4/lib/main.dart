import 'package:flutter/material.dart';
import 'package:intro_provider_4/task_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => TaskProvider(),
        child: MyHomePage(),
      )

    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Todo Application", style: TextStyle(color: Colors.white),),
        leading: IconButton(
          onPressed: () {
            
          },
          icon: Icon(Icons.menu, color: Colors.white70,),
          ),
      ),
      body: Column(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20,),

              Text("02 : 36 PM", style: TextStyle(color: Colors.white70, fontSize: 45, fontWeight: FontWeight.bold),),

              Text("current time", style: TextStyle(color: Colors.white, fontSize: 16,),),

              SizedBox(height: 20,)

            ],
          ), //to show the clock

          Expanded(
            child: Container(

              decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(50), topLeft: Radius.circular(60)), color: Colors.white),
              child: Consumer<TaskProvider>(
                builder: (context, todo, child){
                  return ListView.builder(
                      itemCount: todo.taskList.length,
                      itemBuilder: (context, index){
                        return Container(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(left: 32, right: 32, top: 8, bottom: 8),
                            title: Text(todo.taskList[index].title, style : TextStyle(color: Colors.black87,
                                fontWeight: FontWeight.bold),),
                            subtitle: Text(todo.taskList[index].detail, style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),),

                            trailing: Icon(Icons.check_circle, color: Colors.greenAccent,),
                          ),
                          margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                        );
                      }
                  );
                },
              )


            ),
          )

        ],
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
            Provider.of<TaskProvider>(context,listen: false).addTaskInList();
        },
      ),

    );
  }
}
