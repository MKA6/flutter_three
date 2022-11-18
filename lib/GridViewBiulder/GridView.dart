import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_three/GridViewBiulder/ProductWidget.dart';

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Prefume and Makep' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
              SizedBox(height: 15,),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.horizontal,
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,
                      // mainAxisSpacing: 15,
                      mainAxisExtent: 270 ,
                      crossAxisSpacing: 15),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ProductWidget(
                        ProductName: 'Mohammed',
                        ProductDesc: 'ddsfffgsg',
                        ProductPrice: ' 20 ',
                        ProductImage: '');
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
