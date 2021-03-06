import 'package:flutter/material.dart';

import '../../size.dart';

class Tilewidget extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String planimg;

  Tilewidget({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.planimg,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: SizeConfig.width! * 100,
      height: SizeConfig.height! * 11,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: CircleAvatar(
                  maxRadius: 25,
                  backgroundImage: AssetImage(image),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  SizedBox(
                    height: SizeConfig.height!*1,
                  ),
                  Text(subtitle)
                ],
              ),
              Image.asset(planimg),
              SizedBox(
                height: 3,
              )
            ],
          ),
          //SizedBox(height: SizeConfig.height!*0.5,)
        ],
      ),
    );
  }
}
