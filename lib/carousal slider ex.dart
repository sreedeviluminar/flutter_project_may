import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class CSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CarouselSlider(items: [
        Container(
            decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1689249876759-10ff4bc9f189?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=392&q=80")),
        )),
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            )),
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            )),
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1689249876759-10ff4bc9f189?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=392&q=80")),
            )),
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            )),
        Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            )),
      ], options: CarouselOptions(
        height: 400,
        aspectRatio: 16/9,
        viewportFraction: .6,
        initialPage: 0,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayCurve: Curves.elasticIn,
        enlargeCenterPage: true,
        enlargeFactor: .3,
        scrollDirection: Axis.horizontal

      )),
    );
  }
}
