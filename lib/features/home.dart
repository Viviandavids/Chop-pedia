import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget indicator(bool leading) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: leading ? Colors.red : Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CHOP'PEDIA",
          style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontFamily: 'RobotoMono'),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_sharp),
          )
        ],
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.account_circle),
        ),
      ),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 20),
          child: Text(
            "Daily Inspiration",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(10),
          child: Video(),
        ),
        Column(
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                indicator(true),
                indicator(false),
                indicator(false),
                indicator(false),
              ],
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Categories(),
        ),
      ]),
    );
  }
}

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  State<Video> createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                height: 200,
              ),
              const Align(
                  child: Padding(
                padding: EdgeInsets.only(top: 80.0),
                child: Icon(
                  Icons.play_circle,
                  color: Colors.white,
                  size: 40,
                ),
              )),
              Positioned(
                bottom: 15,
                left: 15,
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    '20 mins',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                  right: 15,
                  top: 15,
                  child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: const Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                      ))),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text("Tuwo shink"),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: const [
                Text("5.0"),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('(4)'),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text('8 Ingredients'),
          )
        ],
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Categories',
                style: Theme.of(context).textTheme.headline6,
              ),
              const Spacer(),
              GestureDetector(
                  child: const Text(
                'View all >',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 15,
                ),
              )),
            ],
          )
        ],
      ),
    );
  }
}
