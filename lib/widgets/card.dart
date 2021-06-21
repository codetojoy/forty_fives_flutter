import 'package:flutter/material.dart';

import '../models/card.dart' as waro_c;

class CardWidget extends StatelessWidget {
  final waro_c.Card _card;
  final Function _selectHandler;
  final bool _faceUp;

  CardWidget(this._card, this._selectHandler, this._faceUp);

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/cards/QH.jpg',
                    fit: BoxFit.cover,
                  ));
  }
}