import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/dashboard_appbar_leading_icon.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OfferViewMobileImagesSlider extends StatefulWidget {
  final List<Widget> items;
  const OfferViewMobileImagesSlider({Key? key, required this.items}) : super(key: key);

  @override
  State<OfferViewMobileImagesSlider> createState() => _OfferViewMobileImagesSliderState();
}

class _OfferViewMobileImagesSliderState extends State<OfferViewMobileImagesSlider> {
  int _carouselIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CarouselSlider(
          items: widget.items,
          options: CarouselOptions(
            onPageChanged: (index, reason) => setState(() => _carouselIndex = index),
            aspectRatio: 1.34,
            viewportFraction: 1,
          ),
        ),
        // AspectRatio(
        //   aspectRatio: 1.34,
        //   child: Assets.images.raster.map.image(fit: BoxFit.cover),
        // ),
        const Positioned(left: 16, top: 50, child: DashboardAppbarLeadingIcon()),
        Positioned(
          bottom: 0,
          child: Container(
            height: 24,
            width: context.sizeWidth,
            decoration: BoxDecoration(
              color: context.appColors.adViewAdOfferBackgroundColor,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(50)),
            ),
            child: Row(),
          ),
        ),
        Positioned(
          bottom: 40,
          child: AnimatedSmoothIndicator(
            activeIndex: _carouselIndex,
            count: widget.items.length,
            effect: ExpandingDotsEffect(
              dotColor: context.appColors.carouselIndicatorColor,
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: context.appColors.carouselActiveIndicatorColor,
            ), // your preferred effect
          ),
        )
      ],
    );
  }
}
