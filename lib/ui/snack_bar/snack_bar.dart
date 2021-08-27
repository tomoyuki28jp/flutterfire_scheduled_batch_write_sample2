import 'package:daily_page/ui/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void showSuccessSnackBar({
  required BuildContext context,
  required String message,
}) =>
    _showSnackBar(
        context: context,
        message: message,
        backgroundColor: context.read(appThemeProvider).appColors.accent);

void showErrorSnackBar({
  required BuildContext context,
  required String message,
}) =>
    _showSnackBar(
        context: context,
        message: message,
        backgroundColor: context.read(appThemeProvider).appColors.error);

void _showSnackBar(
    {required BuildContext context,
    required String message,
    required Color backgroundColor}) {
  final snackBar = SnackBar(
      content: Text(message),
      margin: const EdgeInsets.only(bottom: 16, right: 8, left: 8),
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: backgroundColor);
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
