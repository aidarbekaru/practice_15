import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'DatasOfApp.dart';
class TopicsInUnit extends StatelessWidget {
  Widget build(context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 390,
        initialPage: 0,
        autoPlay: false,
        enableInfiniteScroll: true,
        reverse: false,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: vocabularyTopics
          .map((item) => Container(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    top: 18, right: 28, left: 28, bottom: 18),
                child: Text(
                  item['kazTitle'],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                )),
            Image.asset(item['image'], width: 200),
            Padding(
                padding: EdgeInsets.only(
                    top: 18, right: 28, left: 28, bottom: 18),
                child: Text(
                  item['korTitle'],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                )),
          ],
        ),
      ))
          .toList(),
    );
  }
}
