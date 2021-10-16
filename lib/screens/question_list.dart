class Questions {
  String? image;
  Map<String, bool>? answer;

  Questions(this.image, this.answer);
}

List<Questions> questions = [
  Questions("assets/images/pig.png", {}),
  Questions("assets/images/bird.png", {}),
  Questions("assets/images/cat.png", {}),
  Questions("assets/images/dinasour.png", {}),
  Questions("assets/images/elephant.png", {}),
  Questions("assets/images/goat.png", {}),
  Questions("assets/images/lion.png", {}),
  Questions("assets/images/monkey.png", {}),
  Questions("assets/images/tiger.png", {}),
  Questions("assets/images/zebra.png", {}),
];
