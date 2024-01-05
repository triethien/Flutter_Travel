import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

class FeedView extends StatelessWidget {
  const FeedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
       padding: const EdgeInsets.symmetric(horizontal: 2),
       child: MasonryGridView.builder(
        itemCount: 8,
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
         itemBuilder: (context, index)=> Padding(
        padding: const EdgeInsets.all(4.0),
        
        child: InstaImageViewer(
          child: ClipRRect(
            borderRadius:BorderRadius.circular(4) ,
            child: Image.asset('assets/image/location_0'+(index + 1).toString() +'.png')),
        ),
        
         )),
     );
  }
}