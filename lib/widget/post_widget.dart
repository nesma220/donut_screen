// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PostWidget extends StatelessWidget {
  PostWidget(
      {super.key,
      required this.PostImage,
      required this.NamePost,
      required this.colorIndex});
  String PostImage;
  String NamePost;
  final int colorIndex;

  List<Color> colors = const [
    Color.fromARGB(255, 232, 243, 252),
    Color.fromARGB(255, 233, 190, 250),
    Color.fromARGB(255, 248, 206, 206),
    Color.fromARGB(255, 232, 243, 252),
    Color.fromARGB(255, 233, 190, 250),
    Color.fromARGB(255, 245, 207, 207),
    Color.fromARGB(255, 199, 172, 209),
    Color.fromARGB(255, 239, 196, 196),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Stack(
        children: [
          Container(
            height: 260.h,
            width: 180.w,
            decoration: BoxDecoration(
                color: colors[colorIndex],
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 160,
                    width: 100,
                    child: Image.asset(
                      PostImage,
                    ),
                  ),
                  Text(
                    NamePost,
                    style:  TextStyle(
                        fontSize: 18.sp, fontWeight: FontWeight.bold),
                  ),
                   Text(
                    'Dunkin\'s',
                    style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.favorite_border_outlined)),
                       Text(
                        'Add',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 40.h,
              width: 60.w,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 210, 231, 253),
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  '\$36',
                  style: TextStyle(
                      color: Colors.teal.shade400, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
