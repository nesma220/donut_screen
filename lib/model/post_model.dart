// ignore_for_file: public_member_api_docs, sort_constructors_first

class PostModel {
  String imagePost;
  String postName;

  PostModel({
    required this.imagePost,
    required this.postName,
  });

static  List<PostModel> Post = [
    PostModel(
        imagePost: 'assets/images/icecream_donut.png', postName: 'Strawberry'),
    PostModel(
        imagePost: 'assets/images/strawberry_donut.png',
        postName: 'Chocolate Tap'),
    PostModel(
        imagePost: 'assets/images/chocolate_donut.png', postName: 'Grape'),
    PostModel(
        imagePost: 'assets/images/grape_donut.png', postName: 'Nuts Caramel'),
          PostModel(
        imagePost: 'assets/images/icecream_donut.png', postName: 'Strawberry'),
    PostModel(
        imagePost: 'assets/images/strawberry_donut.png',
        postName: 'Chocolate Tap'),
    PostModel(
        imagePost: 'assets/images/chocolate_donut.png', postName: 'Grape'),
    PostModel(
        imagePost: 'assets/images/grape_donut.png', postName: 'Nuts Caramel'),
  ];
}
