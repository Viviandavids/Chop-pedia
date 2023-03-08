import 'package:flutter/material.dart';

class YouTube extends StatelessWidget {
  final String timeDuration;
  final String food;
  final String ingredient;
  final String image;
  final double? ratings;

  const YouTube({
    Key? key,
    required this.timeDuration,
    required this.food,
    required this.ingredient,
    required this.image,
    required this.ratings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 10),
      width: MediaQuery.of(context).size.width - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffD62E1E),
                  image: DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(image)),
                ),
                height: 170,
              ),
              const Align(
                  child: Padding(
                padding: EdgeInsets.only(top: 70.0),
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
                  child: Text(
                    timeDuration,
                    style: const TextStyle(color: Colors.white),
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
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              food,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Text(
                  ratings.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xffD62E1E),
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xffD62E1E),
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xffD62E1E),
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xffD62E1E),
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xffD62E1E),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text('(4)'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              ingredient,
            ),
          )
        ],
      ),
    );
  }
}
