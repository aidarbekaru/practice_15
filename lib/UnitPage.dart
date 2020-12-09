import 'package:flutter/material.dart';
import 'TopicsInUnit.dart';
import 'VocabularyCards.dart';
import 'QuizForVocabulary.dart';

class UnitPage extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      home: unitPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class unitPage extends StatefulWidget {
  @override
  _unitPageState createState() => _unitPageState();
}

class _unitPageState extends State<unitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Builder(
          builder: (context) => SafeArea(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Тақырыпты таңдаңыз', style:  TextStyle(fontSize: 26, fontWeight: FontWeight.w800, color: Color.fromRGBO(101, 191, 249, 1))),
                    SizedBox(height: 28),
                    TopicsInUnit(),
                    Container(
                        width: 210,
                        height: 45,
                        child: RaisedButton(
                          child: Text('Үйрену', style: TextStyle(color: Colors.white, fontSize: 15)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VocabularyCards()));
                          },
                          color: Color.fromRGBO(101, 191, 249, 1),
                          shape: StadiumBorder(),
                        )
                    ),
                    Container(
                        width: 210,
                        height: 45,
                        child: RaisedButton(
                          child: Text('Тексеру', style: TextStyle(color: Colors.white, fontSize: 15)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => getjson()));
                          },
                          color: Color.fromRGBO(101, 191, 249, 1),
                          shape: StadiumBorder(),
                        )
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }
}