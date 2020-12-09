import 'package:flutter/material.dart';
import 'UnitPage.dart';

class functionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FunctionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class FunctionPage extends StatefulWidget {
  @override
  _FunctionPageState createState() => _FunctionPageState();
}

class _FunctionPageState extends State<FunctionPage> {
  String funcImg;
  String kazFuncName;
  String korFuncName;

  @override
  Widget build(BuildContext context) {
    final Map info = ModalRoute.of(context).settings.arguments as Map;

    funcImg = info['img'];
    kazFuncName = info['kazFuncName'];
    korFuncName = info['korFuncName'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          padding: EdgeInsets.all(5),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color.fromRGBO(101, 191, 249, 1),
            ),
          ),
        ),
      ),

      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color.fromRGBO(101, 191, 249, 0.6),
              ),
              child: Hero(
                tag: '$funcImg',
                child: Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                        image: AssetImage('assets/image/$funcImg.png'),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '$korFuncName',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              '$kazFuncName',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: InkWell(
                  onTap: () => {
                    Navigator.of(context).pop(),
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UnitPage(),
                        ))
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        unitName('안녕하세요?', 'Қалайсыз?'),
                        unitName('우리 동생이에요', 'Бұл менің қарындасым'),
                        unitName('엄마는 영국 사람이에요', 'Менің анам британдық'),
                        unitName('책이 어디에 있어요?', 'Кітап қайда?')
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Column unitName(String korUnitName, String kazUnitName) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          children: <Widget>[
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromRGBO(101, 191, 249, 0.9),
                borderRadius: BorderRadius.all(Radius.circular(17)),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.wb_incandescent,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$korUnitName',
                  style: TextStyle(fontSize: 20, color: Colors.black54),
                ),
                Text(
                  '$kazUnitName',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: MediaQuery.of(context).size.width * 0.85,
            height: 0.5,
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

}
