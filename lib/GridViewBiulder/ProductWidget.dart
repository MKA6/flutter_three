import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String ProductName;
  final String ProductDesc;
  final String ProductPrice;
  final String ProductImage;

  ProductWidget(
      {required this.ProductName,
      required this.ProductDesc,
      required this.ProductPrice,
      required this.ProductImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 190,
          decoration: BoxDecoration(
            color: Color(0xFFcccccc),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          ProductName,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        Text(ProductDesc),
        Text(ProductPrice),
      ],
    );
  }
}
