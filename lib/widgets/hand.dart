import 'package:flutter/material.dart';

import './card.dart';
import '../models/card.dart' as waro_c;
import '../models/hand.dart';

class HandWidget extends StatelessWidget {
  final Hand _hand;
  final Function _selectHandler;

  HandWidget(this._hand, this._selectHandler);

  Widget _buildLandscape(List<Widget> widgets, BuildContext context) {
    return Card(
        child: Container(
          child: GridView.count(
              primary: false,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              crossAxisCount: 2,
              children: widgets),
          height: 200,
          width: 400,
        ),
        elevation: 10);
  }

  Widget _buildPortrait2(List<Widget> widgets, BuildContext context) {
    return Card(
      child: Container(
        height: 400,
        width: 300,
        child: GridView(
          padding: const EdgeInsets.all(10),
          children: widgets,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 80,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
    ))),
    elevation: 10);
  }

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final widgets = _hand.cards.map<Widget>((waro_c.Card card) {
      return CardWidget(card, () => _selectHandler(card), true);
    }).toList();
    return (isLandscape)
        ? _buildLandscape(widgets, context)
        : _buildPortrait2(widgets, context);
  }
}
