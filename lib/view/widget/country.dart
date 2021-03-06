import 'package:flutter/material.dart';
import 'package:mysakthi/model/model.dart';

class SelectCountryContainer extends StatefulWidget {
  const SelectCountryContainer({Key? key}) : super(key: key);

  @override
  _SelectCountryContainerState createState() => _SelectCountryContainerState();
}

class _SelectCountryContainerState extends State<SelectCountryContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            color: Colors.white),
        child: Column(
          children: [
            Center(
                child: Text(
              "select country",
              style: TextStyle(color: Colors.black),
            )),
            Expanded(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int) {
                  return ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[100]),
                      child: Center(
                          child: Text(
                        '${country[int].keys.toString()}',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      )),
                    ),
                    title: Text('${country[int].values.toString()}'),
                  );
                },
                itemCount: country.length,
              ),
            ),
          ],
        ));
  }
}
