import 'package:flutter/material.dart';
import 'package:my_app/Components/Carousels/index.dart';
import 'package:my_app/Components/Custom_Card/index.dart';
import 'package:my_app/font_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                print("pressed");
              },
              icon: Icon(Icons.mail)),
          const SizedBox(width: 10),
          IconButton(
              onPressed: () {
                print("pressed");
              },
              icon: Icon(Icons.notifications)),
          const SizedBox(width: 10),
        ],
        title: Text(
          "Serenity",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
      ),
      body: SafeArea(
          child: Container(
              child: SingleChildScrollView(
        child: Column(children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 10, top: 20, bottom: 5),
            child: Text("Here your recommendation to visit", style: mainHeader),
          ),
          Carousels(),
          const SizedBox(height: 100),
          Row(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      isExternal: true),
                ],
              )
            ],
          )
        ]),
      ))),
    );
  }
}
