import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';

class CameraItem extends StatefulWidget {
  final VoidCallback onTap;
  const CameraItem({Key? key, required this.onTap}) : super(key: key);

  @override
  State<CameraItem> createState() => _CameraItemState();
}

bool _isReady = false;

class _CameraItemState extends State<CameraItem> {
  CameraController? _cameraController;

  @override
  void initState() {
    availableCameras().then((cameras) {
      if (cameras.isNotEmpty) {
        _cameraController = CameraController(cameras.first, ResolutionPreset.medium, enableAudio: false);
        _cameraController!.initialize().then((value) {
          if (!mounted) {
            return;
          }
          _isReady = true;
          setState(() {});
        });
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    _cameraController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: GestureDetector(
        onTap: widget.onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: context.appColors.cameraItemBackgroundColor,
                ),
              ),
              if (_isReady && _cameraController != null && _cameraController!.value.isInitialized)
                SizedBox(
                  height: 90,
                  width: 90,
                  child: CameraPreview(
                    _cameraController!,
                  ),
                ),
              Icon(
                Icons.photo_camera,
                color: context.appColors.cameraItemIconColor,
                size: 36,
              )
            ],
          ),
        ),
      ),
    );
  }
}
