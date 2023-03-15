import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/common/widgets/add_image_button.dart';
import 'package:image_picker/image_picker.dart';

import '../blocs/offer_editor_bloc/offer_editor_bloc.dart';

class OfferEditorViewStep2Web extends StatelessWidget {
  const OfferEditorViewStep2Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<OfferEditorBloc>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'photo'.tr(),
              style: context.appTextTheme.offerEditorInnerTitleTextStyle,
            ),
            const SizedBox(
              height: 12,
            ),
            BlocSelector<OfferEditorBloc, OfferEditorState, List<String>>(
              selector: (state) {
                return state.images;
              },
              builder: (context, images) {
                if (images.isEmpty) {
                  return AddImageButton(
                    width: constraints.maxWidth,
                    height: constraints.maxWidth / 2,
                    onPressed: () async {
                      final ImagePicker picker = ImagePicker();
                      final List<XFile>? images = await picker.pickMultiImage();
                      if (images != null && images.isNotEmpty) {
                        bloc.add(OfferEditorEvent.addImages(images.map((e) => e.path).toList()));
                      }
                    },
                  );
                }
                return Wrap(
                  runSpacing: 20,
                  spacing: 20,
                  children: [
                    ...images.map(
                      (i) => AddImageButton(
                        width: (constraints.maxWidth - 20) / 2,
                        height: (constraints.maxWidth - 20) / 2,
                        imagePath: i,
                        onRemove: () {
                          bloc.add(OfferEditorEvent.removeImage(i));
                        },
                        onPressed: () async {
                          final ImagePicker picker = ImagePicker();
                          final List<XFile>? images = await picker.pickMultiImage();
                          if (images != null && images.isNotEmpty) {
                            bloc.add(OfferEditorEvent.addImages(images.map((e) => e.path).toList()));
                          }
                        },
                      ),
                    ),
                    AddImageButton(
                      width: (constraints.maxWidth - 20) / 2,
                      height: (constraints.maxWidth - 20) / 2,
                      onPressed: () async {
                        final ImagePicker picker = ImagePicker();
                        final List<XFile>? images = await picker.pickMultiImage();
                        if (images != null && images.isNotEmpty) {
                          bloc.add(OfferEditorEvent.addImages(images.map((e) => e.path).toList()));
                        }
                      },
                    )
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
