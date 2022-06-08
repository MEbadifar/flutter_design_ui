import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:design_ui/module/widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Hi Rakib',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/user01.jpg'),
                    ),
                  ),
                ],
              ),
              const Text(
                '10 task pending',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 250,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey.shade300,
                          size: 33,
                        ),
                        Text(
                          'search',
                          style: TextStyle(
                              fontSize: 20, color: Colors.grey.shade300),
                        ),
                      ],
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    elevation: 10,
                    child: const Icon(Icons.filter_list_alt),
                  )
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, bottom: 10),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: const [
                        CategoriyItem(
                            title: 'Mobile App',
                            task: '10 Task',
                            image: 'avatar01.png'),
                        CategoriyItem(
                            title: 'Website App',
                            task: '5 Task',
                            image: 'avatar02.png'),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Ongoing task',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(primary: Colors.orange),
                          onPressed: () {},
                          child: const Text('See all'),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 12),
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 22),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Wallet App Design',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue.shade100,
                                ),
                                child: const Text(
                                  '6d',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'team members',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/avatar04.png'),
                                        radius: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/avatar01.png'),
                                        radius: 15,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage('images/avatar02.png'),
                                        radius: 15,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.access_time_filled_rounded,
                                        color: Colors.orange,
                                      ),
                                      Text(
                                        '2:30 PM - 6:00 PM',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 75,
                                height: 75,
                                child: Stack(children: [
                                  CustomPaint(
                                    painter:
                                        MyPainter(100, Colors.grey.shade100),
                                    child: Container(),
                                  ),
                                  CustomPaint(
                                    painter:
                                        MyPainter(72, Colors.blue.shade300),
                                    child: const Center(
                                      child: Text(
                                        '%46',
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  final double angel;
  final Color? color;

  MyPainter(
    this.angel,
    this.color,
  );

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color ?? Colors.green.shade200
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    canvas.drawArc(
      Rect.fromLTRB(0, 0, size.width, size.height),
      -math.pi / 2,
      (math.pi * 2) * (angel / 100),
      false,
      paint1,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
