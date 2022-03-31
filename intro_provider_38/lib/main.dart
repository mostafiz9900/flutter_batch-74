import 'package:flutter/material.dart';
import 'package:intro_provider_38/models/product.dart';
import 'package:intro_provider_38/provider/list_provider.dart';
import 'package:intro_provider_38/theme.dart';
import 'package:intro_provider_38/ui/my_home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(
        builder: (context, notifier, child) {
          return MaterialApp(
            title: 'Flutter Theme Provider',
            theme: notifier.darkTheme ? dark : light,
            home: HomePage(),
          );
        },
      ),
    );
  }
}

class ProductListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    // Product productObj = Provider.of<Product>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 70.0,
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    // expands: true,
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Product data =
                          Product(id: 2, name: controller.text, price: 2240.00);
                      // productObj.addData(data);

                      print(controller.text);
                    },
                    child: Text('Add'))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  // Product product = productObj.products.elementAt(index);
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text('0'),
                    ),
                    // title: Text('${product.name}'),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
/* 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
          child: Consumer<ThemeNotifier>(
            builder: (context, ThemeNotifier notifier, child) {

              return MaterialApp(
              title: 'Flutter Theme Provider',
              theme: notifier.darkTheme ? dark : light,
              home: HomePage(),
            );
            } ,
          ),
    );
  }
} */

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Provider'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Consumer<ThemeNotifier>(
              builder: (context, notifier, child) => SwitchListTile(
                title: Text(notifier.darkTheme?"Dark Mode":"Light Mode"),
                onChanged: (val) {
                  print(val);
                  notifier.toggleTheme();
                },
                value: notifier.darkTheme,
              ),
            ),
            Card(
              child: ListTile(
                title: Text("This is just a list tile on a card."),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              child: Text("Continue"),
              onPressed: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
/* 
class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CountModel>(context);
    print(counterProvider.value);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider State Manage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counterProvider.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: counterProvider.increment,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: counterProvider.decrement,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
 */