import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/app_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../aircrafts/models/aircraft_image.dart';

class AdViewWebOfferItemImagesSlider extends StatefulWidget {
  final List<AircraftImage> images;
  const AdViewWebOfferItemImagesSlider({Key? key, required this.images}) : super(key: key);

  @override
  State<AdViewWebOfferItemImagesSlider> createState() => _AdViewWebOfferItemImagesSliderState();
}

class _AdViewWebOfferItemImagesSliderState extends State<AdViewWebOfferItemImagesSlider> {
  int _carouselIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      fit: StackFit.expand,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.horizontal(left: Radius.circular(12)),
          child: CarouselSlider(
            items: widget.images
                .map((e) => AppImage(
                      imageUrl: e.correctUrl ?? '',
                      fit: BoxFit.cover,
                      width: double.maxFinite,
                      height: double.maxFinite,
                    ))
                .toList(),
            options: CarouselOptions(
              onPageChanged: (index, reason) => setState(() => _carouselIndex = index),
              viewportFraction: 1,
              aspectRatio: 1.25,
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          child: AnimatedSmoothIndicator(
            activeIndex: _carouselIndex,
            count: widget.images.length,
            effect: ExpandingDotsEffect(
              dotColor: context.appColors.carouselIndicatorColor,
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: context.appColors.carouselActiveIndicatorColor,
            ), // your preferred effect
          ),
        )
      ],
    ));
  }
}
