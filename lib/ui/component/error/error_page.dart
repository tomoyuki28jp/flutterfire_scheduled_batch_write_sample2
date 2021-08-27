import 'package:daily_page/ui/component/error/error_view.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key, this.retry}) : super(key: key);
  final Function()? retry;

  @override
  Widget build(BuildContext context) => Scaffold(body: ErrorView(retry: retry));
}
