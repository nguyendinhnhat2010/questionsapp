class Questions {
  String? image;
  Map<String, bool>? answer;

  Questions(this.image, this.answer);
}

List<Questions> questions = [
  Questions("assets/images/pig.png",
      {"Dog": false, "Pig": true, "Cat": false, "Monkey": false}),
  Questions("assets/images/bird.png",
      {"Dog": false, "Pig": false, "Bird": true, "Monkey": false}),
  Questions("assets/images/cat.png",
      {"Dog": false, "Cat": true, "Dinasour": false, "Monkey": false}),
  Questions("assets/images/dinasour.png",
      {"Dinasour": true, "Pig": false, "Cat": false, "Monkey": false}),
  Questions("assets/images/elephant.png",
      {"Dog": false, "Pig": false, "Cat": false, "Elephant": true}),
  Questions("assets/images/goat.png",
      {"Dog": false, "Pig": false, "Goat": true, "Monkey": false}),
  Questions("assets/images/lion.png",
      {"Dog": false, "Lion": true, "Cat": false, "Monkey": false}),
  Questions("assets/images/monkey.png",
      {"Dog": false, "Pig": false, "Cat": false, "Monkey": true}),
  Questions("assets/images/tiger.png",
      {"Tiger": true, "Pig": false, "Cat": false, "Monkey": false}),
  Questions("assets/images/zebra.png",
      {"Dog": false, "Zebra": true, "Cat": false, "Monkey": false}),
];
