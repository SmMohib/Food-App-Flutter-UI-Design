import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaccibarifood/Model/Color.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: whait,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  blurRadius: 2,
                  color: gray.withOpacity(0.7),
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.search,
                  size: 30,
                  color: red,
                ),
                Text('What would You Like Have?'),
                SizedBox(
                  width: 40,
                ),
                Icon(
                  Icons.filter_list,
                  size: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
