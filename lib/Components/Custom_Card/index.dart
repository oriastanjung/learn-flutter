import 'package:flutter/material.dart';
import 'package:my_app/font_style.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  final bool isExternal;

  const CustomCard(
      {required this.title,
      required this.desc,
      required this.image,
      required this.isExternal});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 10),
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.4,
        clipBehavior: Clip.hardEdge,
        // padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromARGB(255, 205, 205, 205))),
        child: Container(
            color: Colors.white,
            // clipBehavior: Clip.hardEdge,
            child: Column(children: [
              isExternal == false
                  ? Image(
                      image: AssetImage(image),
                      // width: 150,
                      // height: 400,
                    )
                  : Image.network(image),
              Container(
                padding: EdgeInsets.only(left: 5, bottom: 15, right: 5),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      title,
                      style: cardTitle,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      desc,
                      style: cardDesc,
                    )
                  ],
                ),
              )
            ])));
  }
}
