import 'package:flutter/material.dart';
import 'package:mysakthi/size.dart';
import 'package:mysakthi/view/screen/myprofile.dart';
import 'package:mysakthi/view/screen/selectcountry.dart';
import 'package:mysakthi/view/screen/wallebalanceedit.dart';
import 'package:mysakthi/view/widget/country.dart';

class SelectCountry extends StatefulWidget {
  const SelectCountry({Key? key}) : super(key: key);

  @override
  _SelectCountryState createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            backgroundColor: Color.fromRGBO(255, 255, 255, 50),
            // leading: Image.asset("assets/images/search.png"),
            // title: Container(
            //   width: SizeConfig.width!*50,
            //   height: SizeConfig.height!*10,
            //   child: TextField(
            //                 decoration: InputDecoration(
            //                     labelText: "search",
            //                     focusedBorder: InputBorder.none,
            //                     disabledBorder: InputBorder.none,
            //                     border: OutlineInputBorder(borderSide: BorderSide(width: 10),gapPadding: 10,borderRadius: BorderRadius.circular(90))),
            //               ),
            // ),
            title: Transform.translate(
              offset: const Offset(0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Image.asset("assets/images/search.png"),
                  Container(
                    width: SizeConfig.width! * 90,
                    height: SizeConfig.height! * 5,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("close"),
                          ),
                          prefixIcon: Image.asset("assets/images/search.png"),
                          labelText: "search",
                          focusedBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(width: 10),
                              gapPadding: 10,
                              borderRadius: BorderRadius.circular(90))),
                    ),
                  ),
                ],
              ),
            ),
            toolbarHeight: 100,
          ),
        ),
        body: Container(
          decoration: new BoxDecoration(
              // borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20) ),
              image: new DecorationImage(
            image: new AssetImage(
              "assets/images/background3.png",
            ),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
            child: SelectCountryContainer(),
          ),
        ),
      ),
    );
  }
}
