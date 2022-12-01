import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../widgets/default_text.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({

    Key? key,
    required this.email
  }) : super(key: key);
String? email;

  @override
      State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void _incrementCounter() {
    setState(() {});
    _counter++;
    if (kDebugMode) {
      print(_counter);
    }
  }

  void _decrementCounter() {
    setState(() {});
    _counter--;
    if (kDebugMode) {
      print(_counter);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.indigo,

        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Icon(Icons.supervised_user_circle, ),
                  DefaultText(
                    text: "home",

                  ),
                ],
              ),
            ),

            Column(
              children: const [
                ListTile(
                  leading: Icon(Icons.home),
                  title: DefaultText(text: 'Home'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: DefaultText(text: 'Favourite'),
                  trailing: Icon(Icons.arrow_forward_ios_rounded),
                ),
              ],
            ),
          ],
        ),
      ),

      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        elevation: 10,
        leading: IconButton(
            onPressed: (){
              _scaffoldKey.currentState!.openDrawer();
            },
            icon: const Icon(Icons.key_sharp)),
        title: const Text('Home'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,
              colors: [
                Colors.deepOrangeAccent,
                Colors.yellowAccent,
              ],
            ),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 5,
                color: Colors.grey,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Text(
                  "Hello${widget.email}!",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic
                  ),
                ),
              ),
              Flexible(
                flex: 10,
                child: Text(
                  _counter.toString(),
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}