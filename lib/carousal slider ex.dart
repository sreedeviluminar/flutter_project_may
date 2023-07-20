import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CSlider(),));
}

class CSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
            items: List.generate(10, (index) =>
                const Card(
                  color: Colors.green,
                  child: Center(
                      child: Icon(
                        Icons.ac_unit,
                        size: 40,)),
                )),
            //[
            //   Container(
            //       decoration: const BoxDecoration(
            //       image: DecorationImage(
            //         fit: BoxFit.cover,
            //         image: NetworkImage(
            //             "https://images.unsplash.com/photo-1689249876759-10ff4bc9f189?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=392&q=80")),
            //   )),
            //   Container(
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: NetworkImage(
            //                 "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            //       )),
            //   Container(
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: NetworkImage(
            //                 "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            //       )),
            //   Container(
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: NetworkImage(
            //                 "https://images.unsplash.com/photo-1689249876759-10ff4bc9f189?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=392&q=80")),
            //       )),
            //   Container(
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: NetworkImage(
            //                 "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            //       )),
            //   Container(
            //       decoration: const BoxDecoration(
            //         image: DecorationImage(
            //             image: NetworkImage(
            //                 "https://images.unsplash.com/photo-1689781922550-81cacef1d933?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=385&q=80")),
            //       )),
            // ],
            options: CarouselOptions(
            height: 800,
            aspectRatio: 16 / 9,
            viewportFraction: .5,
            initialPage: 2,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 2),
            autoPlayCurve: Curves.easeInOutCubicEmphasized,
            enlargeCenterPage: false,
            enlargeFactor: .3,
            scrollDirection: Axis.vertical
        )),);
  }
}
