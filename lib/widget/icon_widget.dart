import 'package:donut_app_ui/model/icon_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                width: 60.w,
                height: 60.h,
                margin: const EdgeInsets.only(left: 20, right: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 1.3),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SizedBox(
                    height: 30.h,
                    width: 30.w,
                    child: Image.asset(ListIconData[index].imageIcon),
                  ),
                ),
              ),
               SizedBox(
                height: 8.h,
              ),
              Text(
                ListIconData[index].name,
                style:  TextStyle(fontSize: 14.sp),
              ),
            ],
          );
        },
      ),
    );
  }
}
