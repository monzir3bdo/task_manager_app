import 'package:flutter/material.dart';

Future<void> openBottomSheet(
    BuildContext context, Widget bottomSheetWidget) async {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) => Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: bottomSheetWidget,
    ),
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );
}
