import 'package:carousel_slider/carousel_slider.dart';
import 'package:chopedia/features/categories.dart';
import 'package:flutter/material.dart';
import '../shared_widget/youtube.dart';
// import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CHOP'PEDIA",
          style: TextStyle(
              color: Color(0xffD62E1E),
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
      body:
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: const [
        Padding(
          padding: EdgeInsets.only(left: 18, top: 20),
          child: Text("Daily Inspiration",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Video(),
        ),
        Padding(
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
  var _page = 0;
  final List<YouTube> carousel = const [
    YouTube(
      timeDuration: '20 mins',
      food: 'Tuwo Shinkafa (Rice Meal Swallow) - 432 kcal',
      ratings: 4.8,
      ingredient: '8 Ingredients',
    ),
    YouTube(
      timeDuration: '10 mins',
      food: 'Nigerian Jollof rice, plantain and Turkey',
      ratings: 5.0,
      ingredient: '12 Ingredients',
    ),
    YouTube(
      timeDuration: '15 mins',
      food: 'Beans and fried plantain',
      ratings: 4.5,
      ingredient: '10 ingredients',
    ),
    YouTube(
      timeDuration: '30 mins',
      food: 'Amala and Ewedu',
      ratings: 4.2,
      ingredient: '15 ingredients',
    ),
  ];

  Widget indicator(int leading) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: leading == _page ? Color(0xffD62E1E) : Colors.grey,
      ),
    );
  }

  CarouselController indicatorCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
        // width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CarouselSlider(
              items: carousel,
              carouselController: indicatorCarouselController,
              options: CarouselOptions(
                  height: 280,
                  viewportFraction: 1.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _page = index;
                    });
                  }),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                indicator(0),
                indicator(1),
                indicator(2),
                indicator(3),
              ],
            )
          ],
        ));
  }
}
