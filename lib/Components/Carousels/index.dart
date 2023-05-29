import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Components/Custom_Card/index.dart';

class Carousels extends StatelessWidget {
  final List<CustomCard> items = [
    const CustomCard(
        title: "Hello 1",
        desc: "Lorem lorem lorem lorem loerem",
        image: "assets/images/test.jpeg",
        isExternal: false),
    const CustomCard(
        title: "Hello 2",
        desc: "Lorem lorem lorem lorem loerem",
        image:
            "https://plus.unsplash.com/premium_photo-1675804669838-623a874bc34b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
        isExternal: true),
    const CustomCard(
        title: "Hello 2",
        desc: "Lorem lorem lorem lorem loerem",
        image:
            "https://plus.unsplash.com/premium_photo-1675804669838-623a874bc34b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
        isExternal: true),
    const CustomCard(
        title: "Hello 2",
        desc: "Lorem lorem lorem lorem loerem",
        image:
            "https://plus.unsplash.com/premium_photo-1675804669838-623a874bc34b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
        isExternal: true),
    const CustomCard(
        title: "Hello 2",
        desc: "Lorem lorem lorem lorem loerem",
        image:
            "https://plus.unsplash.com/premium_photo-1675804669838-623a874bc34b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
        isExternal: true)
  ];

  // const Carousels({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MainAxisSize(M),
      child: CarouselSlider(
          options: CarouselOptions(height : 300,enableInfiniteScroll: true),
          items: items.map((item) {
            return Container(
              // width: 150,
              width: MediaQuery.of(context).size.width - 100,
              margin: EdgeInsets.symmetric(horizontal: 2.5),
              child: item,
            );
          }).toList()),
    );
  }
}
