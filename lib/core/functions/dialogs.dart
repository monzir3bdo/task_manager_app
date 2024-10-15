import 'package:flutter/material.dart';

openDialog(BuildContext context, Widget dialogWidget) {
  showDialog(context: context, builder: (_) => dialogWidget);
}
