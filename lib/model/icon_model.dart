// ignore_for_file: public_member_api_docs, sort_constructors_first
class IconModel {
  String imageIcon;
  String name;
  IconModel({
    required this.imageIcon,
    required this.name,
  });
}

List<IconModel> ListIconData = [
  IconModel(imageIcon: 'assets/icons/donut.png', name: 'donut'),
  IconModel(imageIcon: 'assets/icons/burger.png', name: 'burger'),
  IconModel(imageIcon: 'assets/icons/pancakes.png', name: 'pancakes'),
  IconModel(imageIcon: 'assets/icons/pizza.png', name: 'pizza'),
  IconModel(imageIcon: 'assets/icons/smoothie.png', name: 'smoothie'),
];
