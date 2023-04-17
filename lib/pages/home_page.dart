import 'package:donut_app_ui/model/post_model.dart';
import 'package:donut_app_ui/widget/icon_widget.dart';
import 'package:donut_app_ui/widget/post_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            padding:  EdgeInsets.symmetric(horizontal: 29.w, vertical: 20.h),
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade800,
              size: 32,
            )),
        actions: [
          IconButton(
            padding:  EdgeInsets.symmetric(horizontal: 29.w, vertical: 20.h),
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
        padding:  EdgeInsets.symmetric(horizontal: 16.w, vertical: 18.h),
        child: SizedBox(
          height: 700.h,
          child: Column(
            children: [
              Row(
                children:  [
                  Text(
                    'I Want to ',
                    style: TextStyle(fontSize: 24.sp),
                  ),
                  Text(
                    'Eat',
                    style:
                        TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w900),
                  ),
                ],
              ),
               SizedBox(
                height: 30.sp,
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
