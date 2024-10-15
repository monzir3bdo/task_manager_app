import 'package:flutter/material.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class DeleteDialogButton extends StatelessWidget {
  const DeleteDialogButton(
      {super.key,
      this.onPressed,
      required this.title,
      this.backgroundColor,
      this.textColor});
  final VoidCallback? onPressed;
  final String title;
  final Color? backgroundColor;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: AppTextStyles.regular12.copyWith(color: textColor),
      ),
    );
  }
}
