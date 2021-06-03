class PopularModel {
  String image;
  int color;
  String text;

  PopularModel(this.image, this.color,this.text);
}

List<PopularModel> populars = popularsData
    .map((item) => PopularModel(item['image'], item['color'],item['text']))
    .toList();

var popularsData = [
  {"image": "assets/svg/burger.svg", "color": 0xFFFEF1ED,"text": "Burger"},
  {"image": "assets/svg/donut.svg", "color": 0xFFEDF6FE,"text": "Donut"},
  {"image": "assets/svg/biryani.svg", "color": 0xFFFEF6E8,"text": "Biryani"},
  {"image": "assets/svg/cake.svg", "color": 0xFFEAF8E8,"text": "Dessart"},
];