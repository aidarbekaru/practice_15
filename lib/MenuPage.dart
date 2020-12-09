import 'package:flutter/material.dart';
import 'FunctionPage.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: menuPage(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/functionPage': (context) => FunctionPage(),
      },
    );
  }
}

class menuPage extends StatefulWidget {
  @override
  _menuPageState createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff4f6fd),
      body: Container(
        padding: EdgeInsets.only(top: 40, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "안녕하세요!",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_circle,
                    color: Color.fromRGBO(101, 191, 249, 0.8),
                    size: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '오늘 무엇을 \n배우고 싶습니까?',
              style: TextStyle(
                  fontSize: 35,
                  height: 1.3,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          functionWidget('Сөздік', '어휘', 'vocabulary'),
                          SizedBox(
                            height: 20,
                          ),
                          functionWidget('Грамматика', '문법', 'grammar'),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          functionWidget('Тыңдау', '듣기', 'listening'),
                          SizedBox(
                            height: 20,
                          ),
                          functionWidget('Оқу', '읽기', 'reading'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container functionWidget(String kazFuncName, String korFuncName, String img) {
    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: InkWell(
        onTap: () {
          goToFunctionPage('$img', '$kazFuncName', '$korFuncName');
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color.fromRGBO(101, 191, 249, 0.8),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Text(
                '$kazFuncName',
                style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '$korFuncName',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 20,
                fontWeight: FontWeight.w600,
                height: 1,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Container(
                  height: 5,
                  width: 100,
                  color: Color.fromRGBO(101, 191, 249, 0.8),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Hero(
              tag: '$img',
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/image/$img.png'),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void goToFunctionPage(String img, String kazFuncName, String korFuncName) {
    Navigator.pushNamed(context, '/functionPage', arguments: {
      'img': '$img',
      'kazFuncName': '$kazFuncName',
      'korFuncName': '$korFuncName'
    });
  }
}
