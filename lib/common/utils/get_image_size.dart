import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Future<Size> getImageSize(String path) {
  Completer<Size> completer = Completer();

  CachedNetworkImageProvider image = CachedNetworkImageProvider(path);
  image.resolve(ImageConfiguration.empty).addListener(
    ImageStreamListener(
      (ImageInfo image, bool synchronousCall) {
        var myImage = image.image;
        Size size = Size(myImage.width.toDouble(), myImage.height.toDouble());
        completer.complete(size);
      },
    ),
  );
  return completer.future;
}
