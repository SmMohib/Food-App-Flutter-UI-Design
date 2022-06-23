import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaccibarifood/Model/Color.dart';

class Categoris extends StatelessWidget {
  const Categoris({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Card(
              child: Container(
                height: 60,
                width: 70,
                child: Image.asset('images/pizza.png'),
                decoration: BoxDecoration(
                  color: whait,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: gray.withOpacity(0.4),
                      spreadRadius: 4,
                      blurRadius: 8,
                      offset: Offset(0, 5),
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}
