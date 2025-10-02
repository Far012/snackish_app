class RecommendItem {
  final String name;
  final String description;
  final String price;
  final String imagePath;
  final String likes;

  RecommendItem(
    this.name,
    this.description,
    this.price,
    this.imagePath,
    this.likes,
  );

  static final List<RecommendItem> itemsData = [
    RecommendItem(
      "Mogli's Cup",
      "Strawberry ice cream",
      "₳ 8.99",
      "assets/grafiken/cupkake_cat.png",
      "200",
    ),

    RecommendItem(
      "Balu's Cup",
      "Pistachio ice cream",
      "₳ 8.99",
      "assets/grafiken/icecream.png",
      "165",
    ),

    RecommendItem(
      "Smiling David",
      "Vanilla Choc",
      "₳ 3.99",
      "assets/grafiken/icecream_stick.png",
      "310",
    ),

    RecommendItem(
      "Kai in a Cone",
      "Crispy waffle cream",
      "₳ 3.99",
      "assets/grafiken/icecream_cone.png",
      "290",
    ),

    RecommendItem(
      "Chick'nCup",
      "Creamy caramel ice cream",
      "₳ 8.99",
      "assets/grafiken/cupcake_chick.png",
      "111",
    ),

    RecommendItem(
      "Angi's Yummy Burger",
      "Delish vegan burger",
      "₳ 13.99",
      "assets/grafiken/burger.png",
      "222",
    ),
  ];
}
