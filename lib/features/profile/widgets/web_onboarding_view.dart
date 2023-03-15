import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WebOnboardingView extends StatefulWidget {
  const WebOnboardingView({Key? key}) : super(key: key);

  @override
  State<WebOnboardingView> createState() => _WebOnboardingViewState();
}

class _WebOnboardingViewState extends State<WebOnboardingView> {
  int _carouselIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.authWebBackgroundColor,
      width: context.sizeWidth * .34,
      height: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: context.sizeHeight * .1,
            right: -context.sizeHeight * .1,
            child: Assets.images.vector.planeOnboardingTopWeb.svg(
              width: context.sizeWidth * .25,
            ),
          ),
          SizedBox(
            width: context.sizeWidth * .25,
            height: context.sizeHeight / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CarouselSlider(
                  // controller: _pageController,

                  options: CarouselOptions(
                    onPageChanged: (index, reason) => setState(() => _carouselIndex = index),
                    viewportFraction: 1,
                    height: (context.sizeHeight / 3) - 30,
                  ),
                  items: [
                    AutoSizeText(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour',
                      style: context.appTextTheme.authWebOnboardingTextStyle,
                      maxFontSize: context.appTextTheme.authWebOnboardingTextStyle.fontSize ?? 16,
                    ),
                    AutoSizeText(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour',
                      style: context.appTextTheme.authWebOnboardingTextStyle,
                      maxFontSize: context.appTextTheme.authWebOnboardingTextStyle.fontSize ?? 16,
                    ),
                    AutoSizeText(
                      'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour',
                      style: context.appTextTheme.authWebOnboardingTextStyle,
                      maxFontSize: context.appTextTheme.authWebOnboardingTextStyle.fontSize ?? 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                AnimatedSmoothIndicator(
                  activeIndex: _carouselIndex,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    dotColor: context.appColors.carouselIndicatorColor,
                    dotHeight: 8,
                    dotWidth: 8,
                    activeDotColor: context.appColors.carouselActiveIndicatorColor,
                  ), // your preferred effect
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Assets.images.vector.buildingOnboardingBottomWeb.svg(
              width: context.sizeWidth * .12,
            ),
          ),
        ],
      ),
    );
  }
}
