import 'package:flutter/material.dart';

import './about.dart';
import '../models/card.dart' as c45;
import '../models/hand.dart';
import '../widgets/hand.dart';
import '../widgets/card.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late AppBar _appBar;
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

  void _pushAbout() {
    Navigator.of(context).pushNamed(About.routeName);
  }

  @override
  Widget build(BuildContext context) {
    _appBar = AppBar(
      title: Text(widget.title),
      actions: [
        IconButton(icon: Icon(Icons.info), onPressed: _pushAbout),
      ],
    );

    var hand1 = Hand();
    hand1.dealCard(c45.Card(c45.Ordinal.ACE, c45.Suit.CLUBS));
    hand1.dealCard(c45.Card(c45.Ordinal.TWO, c45.Suit.DIAMONDS));
    hand1.dealCard(c45.Card(c45.Ordinal.THREE, c45.Suit.HEARTS));
    hand1.dealCard(c45.Card(c45.Ordinal.FOUR, c45.Suit.SPADES));
    hand1.dealCard(c45.Card(c45.Ordinal.FIVE, c45.Suit.CLUBS));
    var hand2 = Hand();
    hand2.dealCard(c45.Card(c45.Ordinal.ACE, c45.Suit.DIAMONDS));
    hand2.dealCard(c45.Card(c45.Ordinal.TWO, c45.Suit.DIAMONDS));
    hand2.dealCard(c45.Card(c45.Ordinal.THREE, c45.Suit.DIAMONDS));
    hand2.dealCard(c45.Card(c45.Ordinal.FOUR, c45.Suit.DIAMONDS));
    hand2.dealCard(c45.Card(c45.Ordinal.TEN, c45.Suit.SPADES));
    var card = CardWidget(c45.Card(c45.Ordinal.FOUR, c45.Suit.DIAMONDS), _selectionHandler, true);

    return Scaffold(
      appBar: _appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('action:',),
            HandWidget(hand1, _selectionHandler),
            Text('computer:',),
            HandWidget(hand2, _selectionHandler),
            Text('your hand:',),
            HandWidget(hand2, _selectionHandler),
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
