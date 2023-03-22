import 'package:donut_app_ui/model/post_model.dart';
import 'package:donut_app_ui/widget/icon_widget.dart';
import 'package:donut_app_ui/widget/post_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 20),
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade800,
              size: 32,
            )),
        actions: [
          IconButton(
            padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 20),
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.grey.shade800,
              size: 32,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        child: SizedBox(
          height: 700,
          child: Column(
            children: [
              Row(
                children: const [
                  Text(
                    'I Want to ',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Eat',
                    style:
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const IconWidget(),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 8,
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 280,
                  ),
                  itemBuilder: (context, index) {
                    return PostWidget(
                      PostImage: PostModel.Post[index].imagePost,
                      NamePost: PostModel.Post[index].postName,
                      colorIndex: index,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
