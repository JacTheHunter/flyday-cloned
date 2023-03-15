import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flyday_broker/common/models/state_status.dart';

void checkStateStatusForError(BuildContext context, StateStatus status) {
  if (status is ErrorStatus) {
    if (status.message.text != null && status.message.text!.isNotEmpty) {
      if (status.message.showPopUp) {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            content: Text(status.message.text?.tr() ?? 'Something went wrong'),
          ),
        );
      } else {
        debugPrint(status.message.text);
      }
    }
  }
}
