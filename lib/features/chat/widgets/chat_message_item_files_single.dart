import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flyday_broker/common/models/state_status.dart';
import 'package:flyday_broker/common/utils/check_state_status.dart';
import 'package:flyday_broker/common/utils/extentions_on_build_context.dart';
import 'package:flyday_broker/gen/assets.gen.dart';
import 'package:open_filex/open_filex.dart';
import 'package:pspdfkit_flutter/pspdfkit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../blocs/file_message_cache_bloc/file_message_cache_bloc.dart';
import '../models/message_file.dart';

class ChatMessageItemFilesSingle extends StatelessWidget {
  final MessageFile item;
  final bool isOwn;
  const ChatMessageItemFilesSingle({Key? key, required this.item, required this.isOwn}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FileMessageCacheBloc(path: item.path)..add(const FileMessageCacheEvent.start()),
      child: Builder(builder: (context) {
        final fileMessageCacheBloc = context.read<FileMessageCacheBloc>();
        return BlocConsumer<FileMessageCacheBloc, FileMessageCacheState>(
          listener: (context, state) {
            checkStateStatusForError(context, state.status);
            if (state.status is SuccessStatus) {
              _openFile(state.localFilePath!);
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                GestureDetector(
                  onTap: () async {
                    if (state.localFilePath != null) {
                      _openFile(state.localFilePath!);
                    } else {
                      fileMessageCacheBloc.add(const FileMessageCacheEvent.cache());
                    }
                  },
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 11),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: context.appColors.chatMessageFileBorderColor,
                        ),
                        child: state.status is LoadingStatus
                            ? CircularProgressIndicator(value: state.progress)
                            : Assets.images.vector.file.svg(),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  item.name,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: isOwn
                                      ? context.appTextTheme.chatMessageOwnTextStyle
                                      : context.appTextTheme.chatMessageTextStyle,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            '${item.size} ${item.extention}',
                            style: isOwn
                                ? context.appTextTheme.chatMessageOwnFileSizeTextStyle
                                : context.appTextTheme.chatMessageFileSizeTextStyle,
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            );
          },
        );
      }),
    );
  }

  void _openFile(String path) {
    if (kIsWeb) {
      launchUrl(Uri.parse(path));
    } else {
      if (item.path.endsWith('pdf')) {
        Pspdfkit.present(path);
      } else {
        OpenFilex.open(path);
      }
    }
  }
}
