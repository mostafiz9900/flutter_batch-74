import 'package:flutter/material.dart';
import 'package:intro_provider_38/models/list_model.dart';
import 'package:intro_provider_38/provider/list_provider.dart';
import 'package:provider/provider.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState>? _formKey;
  TextEditingController? _controller;
  var taskItems;
  int counter = 0;
  DynamicList? listClass;

  @override
  void initState() {  
    super.initState();

    _formKey = GlobalKey();
    _controller = TextEditingController();
    taskItems = Provider.of<ListProvider>(context, listen: false);
    listClass = DynamicList(taskItems.list);
  }

  @override
  void dispose() {
 
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    controller: _controller,
                    onSaved: (val) {
                      taskItems.addItem(val);
                    },
                    validator: (val) {
                      if (val!.length > 0) {
                        return null;
                      } else
                        return 'Add a text';
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey!.currentState!.validate()) {
                      _formKey!.currentState!.save();
                    }
                  },
                  child: Text('Add'),
                ),
              ),
              Consumer<ListProvider>(builder: (context, provider, listTile) {
                return Expanded(
                  child: ListView.builder(
                    itemCount: listClass!.list.length,
                    itemBuilder: buildList,
                  ),
                );
              }),
            ],
          ),
        ));
  }

  Widget buildList(BuildContext context, int index) {
    counter++;
    return Dismissible(
        key: Key(counter.toString()),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          taskItems.deleteItem(index);
        },
        child: Container(
          margin: EdgeInsets.all(4),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text(listClass!.list[index].toString()),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        ));
  }
}
