import 'package:flutter/material.dart';

class Food {
  final String name;
  final String image;

  Food({required this.name, required this.image});
}

List<Food> foods = [
  Food(name: 'Pizza', image: 'pizza.jpg'),
  Food(name: 'Burger', image: 'burger.jpg'),
  Food(name: 'Sushi', image: 'sushi.jpg'),
  Food(name: 'Pasta', image: 'pasta.jpg'),
  Food(name: 'Taco', image: 'taco.jpg'),
];

class FoodGridView extends StatelessWidget {
  const FoodGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
      ),
      body: GridView.builder(
        itemCount: foods.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/${foods[index].image}'),
                fit: BoxFit.cover,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Text(
                    foods[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class Food {
//   final String name;
//   final List<String> ingredients;
//   final Duration duration;
//   final int calories;

//   Food({
//     required this.name,
//     required this.ingredients,
//     required this.duration,
//     required this.calories,
//   });
// }

// final List<Food> foods = [  Food(    name: 'Pasta',    ingredients: ['pasta', 'tomato sauce', 'ground beef'],
//     duration: Duration(minutes: 30),
//     calories: 500,
//   ),
//   Food(
//     name: 'Salad',
//     ingredients: ['lettuce', 'tomatoes', 'cucumbers', 'vinaigrette'],
//     duration: Duration(minutes: 10),
//     calories: 200,
//   ),
//   Food(
//     name: 'Steak',
//     ingredients: ['beef', 'garlic', 'thyme'],
//     duration: Duration(minutes: 20),
//     calories: 800,
//   ),
// ];

// class FoodScreen extends StatelessWidget {
//   const FoodScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Foods'),
//       ),
//       body: GridView.builder(
//         itemCount: foods.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 1.0,
//           mainAxisSpacing: 10.0,
//           crossAxisSpacing: 10.0,
//         ),
//         itemBuilder: (BuildContext context, int index) {
//           final food = foods[index];
//           return Card(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 AspectRatio(
//                   aspectRatio: 1.0,
//                   child: Image.network(
//                     'https://source.unsplash.com/500x500/?${food.name}',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         food.name,
//                         style: Theme.of(context).textTheme.headline6,
//                       ),
//                       SizedBox(height: 4.0),
//                       Text(
//                         '${food.duration.inMinutes} min | ${food.calories} cal',
//                         style: Theme.of(context).textTheme.caption,
//                       ),
//                       SizedBox(height: 4.0),
//                       Text(
//                         food.ingredients.join(', '),
//                         style: Theme.of(context).textTheme.bodyText2,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
