import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/infinite_list_pagination.dart';

import '../blocs/local_images_bloc/local_images_bloc.dart';
import 'camera_and_local_images_item.dart';
import 'camera_item.dart';

class CameraAndLocalImages extends StatelessWidget {
  final bool hasCameraPemission;
  final VoidCallback onCameraItemTap;
  const CameraAndLocalImages({super.key, required this.hasCameraPemission, required this.onCameraItemTap});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalImagesBloc, LocalImagesState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 90,
              width: double.maxFinite,
              child: InfiniteListPagination(
                onMaxScrollExtent: () => context.read<LocalImagesBloc>().add(const LocalImagesEvent.fetch(true)),
                builder: (context, controller) {
                  return ListView.builder(
                    cacheExtent: 10,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    controller: controller,
                    itemCount: state.localImagesMediums.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        if (hasCameraPemission) {
                          return CameraItem(
                            onTap: onCameraItemTap,
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      } else {
                        final i = index - 1;
                        final isSelected = state.selectedIndexes.contains(i);
                        return CameraAndLocalImagesItem(
                          mediumId: state.localImagesMediums[i].id,
                          isSelected: isSelected,
                          index: i,
                        );
                      }
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 36,
            ),
          ],
        );
      },
    );
  }
}
