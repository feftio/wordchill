import 'package:flutter/material.dart';

enum CardType { red, blue, grey, black }

class CodenamesCard extends StatefulWidget {
  final CardType type;
  final String text;
  final Function callback;

  CodenamesCard(
      {@required this.text, @required this.type, @required this.callback});

  @override
  _CodenamesCardState createState() => _CodenamesCardState();
}

class _CodenamesCardState extends State<CodenamesCard> {
  Color _textColor = Colors.black87;
  Color _cardColor = Colors.white;
  bool opened = false;
  bool selected = false;

  void openCard() {
    setState(() {
      if (opened) return;
      opened = true;
      widget.callback(widget.text);
      _textColor = Colors.white;
      switch (widget.type) {
        case CardType.blue:
          _cardColor = Colors.blue;
          break;
        case CardType.red:
          _cardColor = Colors.red;
          break;
        case CardType.grey:
          _cardColor = Colors.grey;
          break;
      }
    });
  }

  void pickCard() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
        absorbing: opened,
        child: InkWell(
            onTap: openCard,
            child: AnimatedContainer(
                height: 70,
                width: 130,
                curve: Curves.easeOutCirc,
                duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                    color: _cardColor,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset: Offset(0, 10))
                    ]),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: AnimatedDefaultTextStyle(
                    curve: Curves.easeOutCirc,
                    duration: Duration(seconds: 1),
                    style: TextStyle(color: _textColor),
                    child: Center(
                        child: Text(
                      widget.text,
                      textAlign: TextAlign.center,
                    ))))));
  }
}
