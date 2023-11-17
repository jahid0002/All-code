import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';



Widget networkImage(String url) {
  return CachedNetworkImage(
    imageUrl: url,
    imageBuilder: (context, imageProvider) {
      return Container(
        height: 150,
       decoration: BoxDecoration( 
        borderRadius: BorderRadius.circular(15), 
        image: DecorationImage(image: imageProvider, fit: BoxFit.fill),
       ),
      );
    },
  );
}
