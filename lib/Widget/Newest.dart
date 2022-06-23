import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kaccibarifood/Model/Color.dart';

class Newest extends StatelessWidget {
  const Newest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Padding(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView.builder(itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Image.asset(
                      'images/pizza.png',
                      height: 120,
                      width: 140,
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hot Burgar',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Tecty our Hot Burgar',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
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
                        Text(
                          '\$\100',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 1,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: red,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delivery_dining_outlined,
                                color: red,
                              ))
                        ],
                      )),
                ],
              ),
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
          );
        })),
      ),
    );
  }
}
