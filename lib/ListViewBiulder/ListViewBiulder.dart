import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_three/ListViewBiulder/Post_mmm.dart';

class ListViewBiulder extends StatelessWidget {
  List name = [
    'fdgdg',
    'srrtr',
    'rtsstg',
    'rstrsts',
  ];

  List cat2 = [
    'sfsfs',
    'srrdfdsftr',
    'dfdsf',
    'rsterewrwrsts',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: name.length ,
            itemBuilder: (context, index) {
              return Post_mmm(name[index], cat2[index], index);
            }));
  }
}
