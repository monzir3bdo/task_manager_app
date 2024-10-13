import 'package:flutter/material.dart';

Future<void> openBottomSheet(
    BuildContext context, Widget bottomSheetWidget) async {
  showModalBottomSheet(
    context: context,
    builder: (context) => bottomSheetWidget,
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  );
}
