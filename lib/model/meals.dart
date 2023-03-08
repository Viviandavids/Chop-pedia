class Food {
  final String name;
  final List<String> ingredients;
  final Duration duration;
  final int calories;

  Food({
    required this.name,
    required this.ingredients,
    required this.duration,
    required this.calories,
  });
}

final pasta = Food(
  name: 'Pasta',
  ingredients: ['pasta', 'tomato sauce', 'ground beef'],
  duration: Duration(minutes: 30),
  calories: 500,
);
