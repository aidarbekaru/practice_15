import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MenuPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Korean Learning App',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/menuPage': (context) => MenuPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    "한국어",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(101, 191, 249, 1),
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                        height: 1),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Text(
                    "Корей тілін үйрену",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromRGBO(101, 191, 249, 1),
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        height: 1),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/logo6.jpg'),
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                bottom: 50,
                left: 0,
                right: 0,
                child: Center(
                  child: InkWell(
                    onTap: () {
                      openMenuPage();
                    },
                    child: Container(
                      padding:
                      EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(101, 191, 249, 1),
                        borderRadius: BorderRadius.all(Radius.circular((40))),
                      ),
                      child: Text(
                        'Жалғастыру..',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void openMenuPage() {
    Navigator.pushNamed(context, '/menuPage');
  }
}
