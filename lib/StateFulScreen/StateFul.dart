import 'dart:developer';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StateFulScreens extends StatelessWidget {
  Function function;
  StateFulScreens(this.function);
  String content = 'Mohammed';
  // bool isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: isDark ? Colors.black : Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                function();
              //   isDark = !isDark;
              //   setState(() {});
              },
              icon: Icon(
                Icons.dark_mode,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            content,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              // color: isDark ? Colors.white : Colors.black
            ),
          ),
          ElevatedButton(
            onPressed: () {
              content = (content == 'Mohammed') ? 'Kamel' : 'Mohammed';
            },
            child: Text('Change Content'),
          ),
          ElevatedButton(
            onPressed: () {
              print(content);
            },
            child: Text('Print Content'),
          )
        ],
      ),
    );
  }
}
