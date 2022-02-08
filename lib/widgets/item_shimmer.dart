import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 150,
      child: Shimmer.fromColors(
          baseColor: Colors.grey[400],
          highlightColor: Colors.grey,
          child: Card(
            elevation: 10,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              children: [
                Expanded(child: Container(), flex: 1),
                Expanded(child: Container(), flex: 4)
              ],
            ),
          )),
    );
  }
}
