import 'package:flutter/material.dart';
import 'package:wordchill/codenames/card.dart';

class CardGrid extends StatelessWidget {
  const CardGrid({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 70,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0),
        itemCount: 15,
        padding: EdgeInsets.all(30),
        itemBuilder: (_, index) {
          return CodenamesCard(
            text: "hello ${index + 1}",
            type: CardType.red,
            callback: (String text) {
              print(text);
            },
          );
        });
  }
}
