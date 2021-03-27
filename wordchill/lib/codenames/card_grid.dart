import 'package:flutter/material.dart';
import 'package:wordchill/codenames/card.dart';
import 'package:wordchill/utils/random_service.dart';

class CardGrid extends StatelessWidget {
  CardGrid({Key key}) : super(key: key) {
    print('hello');
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: 70,
            crossAxisSpacing: 5.0,
            mainAxisSpacing: 5.0),
        itemCount: 15,
        padding: EdgeInsets.only(top: 50, left: 30, right: 30, bottom: 30),
        itemBuilder: (_, index) {
          return CodenamesCard(
            text: "hello ${index + 1}",
            type: RandomService.choose(
                [CardType.black, CardType.blue, CardType.grey, CardType.red]),
            callback: (String text) {
              print(text);
            },
          );
        });
  }
}
