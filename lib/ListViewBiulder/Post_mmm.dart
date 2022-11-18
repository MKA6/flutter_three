import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post_mmm extends StatelessWidget {
  final String catName;
  final String cat2;
  final int index;

  const Post_mmm(this.catName, this.cat2, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 7,
      ),
      alignment:
          (index % 2) == 0 ? Alignment.centerRight : Alignment.centerLeft,
      width: double.infinity,
      height: 110,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        color: Colors.grey,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              catName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              cat2,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
