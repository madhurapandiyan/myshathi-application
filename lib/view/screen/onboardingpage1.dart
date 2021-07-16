import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';

class Onboardingpage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: SizeConfig.width! * 100,
          height: SizeConfig.height! * 100,
          decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: (AssetImage("assets/images/background.png")))),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Image.asset(
                    "assets/images/newlogo.png",
                    scale: 3,
                    // width: SizeConfig.width! * 50,
                    // height: SizeConfig.width! * 50,
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/card1.png",
                    scale: 1,
                    width: SizeConfig.width! * 100,
                    height: SizeConfig.width! * 100,

                    // height: 600,
                  ),
                ),
                
                Center(
                    child: Text(
                  "Organize Your Money",
                  style: Theme.of(context).textTheme.headline1,
                )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Container(
                      height: SizeConfig.blockSizeVertical!*10,
                      width: SizeConfig.blockSizeVertical!*30,
                      child: Text(
                        "Welcome! AiF helps you to have better understanding of your finances,  present and future.",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("skip", style: Theme.of(context).textTheme.button),
                      Container(
                          width: SizeConfig.width! * 30,
                          height: SizeConfig.height! * 7,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: Center(
                              child: Text(
                            "Next",
                            style: Theme.of(context).textTheme.bodyText2,
                          )))
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}