import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppImage extends StatelessWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final Widget? placeHolder;
  final BoxFit? fit;
  final Color? color;
  const AppImage({
    Key? key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.color,
    this.placeHolder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (imageUrl.endsWith('.svg')) {
      return SvgPicture.network(
        imageUrl,
        width: width,
        height: height,
        fit: fit ?? BoxFit.contain,
        placeholderBuilder: (context) =>
            placeHolder ?? SizedBox(width: width, height: height, child: const CircularProgressIndicator()),
        color: color,
      );
    }
    return CachedNetworkImage(
      imageUrl: imageUrl,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      placeholder: (context, url) =>
          placeHolder ??
          const Align(
            child: CircularProgressIndicator(),
          ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      color: color,
    );

    // return Image.network(
    //   imageUrl,
    //   width: width,
    //   height: height,
    //   fit: fit ?? BoxFit.contain,
    //   loadingBuilder: (context, child, loadingProgress) => const Align(
    //     child: CircularProgressIndicator(),
    //   ),
    //   errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
    //   // color: color,
    // );
  }
}
