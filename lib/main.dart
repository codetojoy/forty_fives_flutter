import 'package:flutter/material.dart';

import './models/card.dart' as c45;
import './models/hand.dart';
import './widgets/hand.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forty-Fives',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Forty-Fives'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _selectionHandler() {
    setState(() {
    });
  }

  @override
  Widget build(BuildContext context) {
    var hand1 = Hand();
    hand1.dealCard(c45.Card(c45.Ordinal.ACE, c45.Suit.CLUBS));
    hand1.dealCard(c45.Card(c45.Ordinal.TWO, c45.Suit.CLUBS));
    hand1.dealCard(c45.Card(c45.Ordinal.THREE, c45.Suit.CLUBS));
    hand1.dealCard(c45.Card(c45.Ordinal.FOUR, c45.Suit.CLUBS));
    var hand2 = Hand();
    hand2.dealCard(c45.Card(c45.Ordinal.ACE, c45.Suit.DIAMONDS));
    hand2.dealCard(c45.Card(c45.Ordinal.TWO, c45.Suit.DIAMONDS));
    hand2.dealCard(c45.Card(c45.Ordinal.THREE, c45.Suit.DIAMONDS));
    hand2.dealCard(c45.Card(c45.Ordinal.FOUR, c45.Suit.DIAMONDS));

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            HandWidget(hand1, _selectionHandler),
            HandWidget(hand2, _selectionHandler),
            Text(
              'TRACER count:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
