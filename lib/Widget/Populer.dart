import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kaccibarifood/Model/Color.dart';

class Populer extends StatelessWidget {
  const Populer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 244,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: 170,
                  // ignore: sort_child_properties_last
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          'images/pizza.png',
                          height: 120,
                          width: 140,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    '\$\100',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.favorite,
                                        color: red,
                                      ))
                                ],
                              ),
                            ],
                          )),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: whait,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: gray.withOpacity(0.8),
                        spreadRadius: 4,
                        blurRadius: 8,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(
                          0,
                          6,
                        ),
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
