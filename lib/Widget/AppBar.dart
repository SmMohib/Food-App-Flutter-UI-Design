import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaccibarifood/Model/Color.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              child: Icon(Icons.menu),
              decoration: BoxDecoration(
                color: whait,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: gray.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              child: Icon(Icons.notifications),
              decoration: BoxDecoration(
                color: whait,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: gray.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
