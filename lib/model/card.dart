class CardModel {
  String burgerName;
  String burgerDetails;
  String calories;
  String image;
  String price;
  String cardElementTop;
  String cardElementBottom;

  CardModel(this.burgerName, this.burgerDetails, this.calories, this.image,
      this.price, this.cardElementTop, this.cardElementBottom);
}
List<CardModel> cards = cardData.map(
      (item) => CardModel(
    item['burgerName'],
    item['burgerDetails'],
    item['calories'],
    item['image'],
    item['price'],
    item['cardElementTop'],
    item['cardElementBottom'],
  ),
).toList();
var cardData = [
  {
    "burgerName": "Tofu burger",
    "burgerDetails": "Spicy tofu buger",
    "calories": "120 Calories",
    "image": "assets/images/burger_1.png",
    "price": "3.62",
    "cardElementTop": "assets/svg/card_top.svg",
    "cardElementBottom": "assets/svg/card_buttom.svg"
  },
  {
    "burgerName": "Amanda Alex",
    "burgerDetails": "Spicy tofu buger",
    "calories": "100 Calories",
    "image": "assets/images/burger_2.png",
    "price": "4.0",
    "cardElementTop": "assets/svg/card_top.svg",
    "cardElementBottom": "assets/svg/card_buttom.svg"
  }, {
    "burgerName": "Tofu burger",
    "burgerDetails": "Spicy tofu buger",
    "calories": "120 Calories",
    "image": "assets/images/burger_1.png",
    "price": "3.62",
    "cardElementTop": "assets/svg/card_top.svg",
    "cardElementBottom": "assets/svg/card_buttom.svg"
  },
  {
    "burgerName": "Amanda Alex",
    "burgerDetails": "Spicy tofu buger",
    "calories": "100 Calories",
    "image": "assets/images/burger_2.png",
    "price": "4.0",
    "cardElementTop": "assets/svg/card_top.svg",
    "cardElementBottom": "assets/svg/card_buttom.svg"
  },
];