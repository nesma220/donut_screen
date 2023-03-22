import 'package:donut_app_ui/model/icon_model.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: ListIconData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.only(left: 20, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 1.3),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                    height: 30,
                    width: 30,
                    child: Image.asset(ListIconData[index].imageIcon),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                ListIconData[index].name,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          );
        },
      ),
    );
  }
}
