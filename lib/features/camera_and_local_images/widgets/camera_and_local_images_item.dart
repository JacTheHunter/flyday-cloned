import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:photo_gallery/photo_gallery.dart';
import 'package:transparent_image/transparent_image.dart';

import '../blocs/local_images_bloc/local_images_bloc.dart';

class CameraAndLocalImagesItem extends StatelessWidget {
  final String mediumId;
  final bool isSelected;
  final int index;
  const CameraAndLocalImagesItem({super.key, required this.mediumId, required this.isSelected, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<LocalImagesBloc>().add(LocalImagesEvent.select(index));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: FadeInImage(
                fit: BoxFit.cover,
                width: 90,
                height: 90,
                placeholder: MemoryImage(kTransparentImage),
                image: ThumbnailProvider(
                  mediumId: mediumId,
                  mediumType: MediumType.image,
                  width: 90,
                  height: 90,
                  highQuality: true,
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: AnimatedSwitcher(
                duration: kThemeAnimationDuration,
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                child: AnimatedContainer(
                  duration: kThemeAnimationDuration,
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: isSelected ? context.appColors.primaryColor : null,
                    border: isSelected ? null : Border.all(width: 2, color: context.appColors.checkboxIconColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: AnimatedScale(
                      scale: isSelected ? 1 : 0,
                      duration: kThemeAnimationDuration,
                      child: Icon(
                        Icons.check,
                        color: context.appColors.checkboxIconColor,
                        size: 18,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
