import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

import '../../gen/assets.gen.dart';
import '../utils/platform.dart';

class AddImageButton extends StatelessWidget {
  final void Function()? onPressed;
  final String? imagePath;
  final double? width;
  final double? height;
  final void Function()? onRemove;
  final Size cameraSize;
  const AddImageButton({
    Key? key,
    this.onPressed,
    this.imagePath,
    this.width,
    this.height,
    this.onRemove,
    this.cameraSize = const Size(33, 30),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: width ?? 120,
          height: height ?? 120,
          child: OutlinedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  (isWebDesktop) ? context.appColors.inputFillWebColor : context.appColors.inputFillMobileColor,
              padding: const EdgeInsets.all(0),
              elevation: 0,
            ),
            child: imagePath != null && imagePath!.isNotEmpty
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: (kIsWeb || imagePath!.startsWith('http'))
                        ? Image.network(
                            imagePath!,
                            fit: BoxFit.cover,
                            width: width ?? 120,
                            height: height ?? 120,
                          )
                        : Image.file(
                            File(imagePath!),
                            fit: BoxFit.cover,
                            width: width ?? 120,
                            height: height ?? 120,
                          ),
                  )
                : Center(
                    child: Assets.images.vector.photoCamera.svg(width: cameraSize.width, height: cameraSize.height)),
          ),
        ),
        if (onRemove != null)
          Positioned(
            top: -10,
            right: -10,
            child: IconButton(
              iconSize: 20,
              onPressed: onRemove,
              icon: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  color: context.appColors.addImageRemoveIconBackgroundColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                // padding: EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    Icons.cancel,
                    color: context.appColors.addImageRemoveIconColor,
                  ),
                ),
              ),
            ),
          )
      ],
    );
  }
}
