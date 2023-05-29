import 'package:flutter/material.dart';

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
        width: 150,
        height: 500,
        clipBehavior: Clip.hardEdge,
        // padding: EdgeInsets.only(left: 15, right: 15, bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 23, 23, 23).withOpacity(0.3),
                spreadRadius: 0,
                blurRadius: 10,
                offset: Offset(
                    0, 8), // changes the shadow direction, adjust as needed
              ),
            ],
            border:
                Border.all(color: const Color.fromARGB(255, 156, 157, 158))),
        child: Container(
            color: Colors.white,
            // clipBehavior: Clip.hardEdge,
            child: Column(children: [
              isExternal == false
                  ? Image(
                      image: AssetImage(image),
                      // width: 150,
                    )
                  : Image.network(image),
              Container(
                padding: EdgeInsets.only(left: 5, bottom: 15, right: 5),
                child: Column(
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(desc)
                  ],
                ),
              )
            ])));
  }
}
