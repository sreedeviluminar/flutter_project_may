import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main(){
  runApp(MaterialApp(home: StagGrid(),));
}
class StagGrid extends StatelessWidget {
  const StagGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Staggered Grid"),
        ),
        body: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 4,
            // crossAxisSpacing:5,
            // mainAxisSpacing: 5,
            children: const [
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1,
                  child: Card(child: Center(child: Text("1")),color: Colors.red,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 2,
                  child: Card(child: Center(child: Text("2")),color: Colors.green,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 1,
                  mainAxisCellCount: 3,
                  child: Card(child: Center(child: Text("3")),color: Colors.yellow,)),
              StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 4,
                  child: Card(child: Center(child: Text("4")),color: Colors.blue,)),
            ],
          ),
        ));
  }
}
