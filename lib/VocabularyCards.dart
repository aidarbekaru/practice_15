import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'DatasOfApp.dart';

class VocabularyCards extends StatefulWidget {
  State<StatefulWidget> createState() => VocabularyCardsState();
}

class VocabularyCardsState extends State<VocabularyCards> {
  CardController controller;
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromRGBO(101, 191, 249, 1)),
        centerTitle: true,
        backgroundColor: Color(0xFFF6F6F6),
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          "Сөздерді үйреніңіз",
          style: TextStyle(color: Color.fromRGBO(101, 191, 249, 1)),
        ),
      ),
      backgroundColor: Color.fromRGBO(101, 191, 249, 1),
      body: Center(
          child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: TinderSwapCard(
                orientation: AmassOrientation.BOTTOM,
                totalNum: vocabularyCards.length,
                swipeEdge: 3.0,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: MediaQuery.of(context).size.width * 0.8,
                minWidth: MediaQuery.of(context).size.width * 0.6,
                minHeight: MediaQuery.of(context).size.width * 0.7,
                cardBuilder: (context, index) => Card(
                  child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('${vocabularyCards[index]['kazTitle']}',
                              style: TextStyle(fontSize: 20, color: Colors.black54)),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset('${vocabularyCards[index]['image']}',
                              width: 150, height: 150),
                          SizedBox(
                            height: 10,
                          ),
                          Text('${vocabularyCards[index]['korTitle']}',
                              style: TextStyle(fontSize: 20, color: Colors.black54)),
                        ],
                      )
                  ),
                ),
                cardController: controller = CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  if (align.x < 0) {
                  } else if (align.x > 0) {
                  }
                },
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                },
              )
          )
      ),
    );
  }
}