import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaccibarifood/Model/Color.dart';
import 'package:kaccibarifood/Model/textstyle.dart';
import 'package:kaccibarifood/Widget/AppBar.dart';
import 'package:kaccibarifood/Widget/Categoris.dart';
import 'package:kaccibarifood/Widget/Newest.dart';
import 'package:kaccibarifood/Widget/Populer.dart';
import 'package:kaccibarifood/Widget/SearchButton.dart';

class HomPage extends StatelessWidget {
  const HomPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        AppbarWidget(),
        SearchButton(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Categoris',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ),
        Categoris(),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10, bottom: 10),
          child: Text(
            'Populer',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Populer(),
        Padding(
          padding: const EdgeInsets.only(top: 15, left: 10, bottom: 10),
          child: Text(
            'Newest',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
        ),
        Newest()
      ]),
    );
  }
}
