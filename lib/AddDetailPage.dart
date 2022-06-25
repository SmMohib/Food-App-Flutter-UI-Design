import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kaccibarifood/HomPage.dart';
import 'package:kaccibarifood/Model/Color.dart';
import 'package:kaccibarifood/Widget/AppBar.dart';

class AddDetailPage extends StatefulWidget {
  AddDetailPage({Key? key}) : super(key: key);

  @override
  State<AddDetailPage> createState() => _AddDetailPageState();
}

class _AddDetailPageState extends State<AddDetailPage> {
  String tt =
      'The onSelected property is used to invoke the onSelected callback when the user selects an item from the popup menu. The popup menu will be dismissed when the user selects an item.';
  int _counter = 0;
//Add
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  //Remove
  void _decrement() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
      ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     leading: InkWell(
      //         onTap: () {
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: ((context) => HomPage())));
      //         },
      //         child: Icon(Icons.arrow_back))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 17,
          ),
          AppbarWidget(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: double.infinity,
              child: Image.asset(
                'images/burger.png',
              ),
              decoration: BoxDecoration(
                  color: gray, borderRadius: BorderRadius.circular(15)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RatingBar.builder(
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: EdgeInsets.symmetric(horizontal: 3.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' \$100',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: scecondary.withOpacity(0.9),
                        spreadRadius: 3,
                        blurRadius: 2,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: _decrement,
                          child: CircleAvatar(
                              backgroundColor: red,
                              child: Icon(
                                Icons.remove,
                                color: whait,
                              )),
                        ),
                        Text(
                          '$_counter',
                          style: TextStyle(
                            fontSize: 25,
                            color: whait,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        InkWell(
                          onTap: _incrementCounter,
                          child: CircleAvatar(
                              backgroundColor: red,
                              child: Icon(
                                Icons.add,
                                color: whait,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              tt,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Delivary Time',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '20 Min',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                //  'Chackout: (${((widget.price)! * i)})',
                child: Text(
                  'Total:${100 * _counter}',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 100,
                      child: Center(
                          child: Text(
                        'Add Card',
                        style: TextStyle(
                            fontSize: 16,
                            color: whait,
                            fontWeight: FontWeight.w400),
                      )),
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: scecondary,
                          blurRadius: 1,
                          spreadRadius: 3,
                        ),
                      ], borderRadius: BorderRadius.circular(15)),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
