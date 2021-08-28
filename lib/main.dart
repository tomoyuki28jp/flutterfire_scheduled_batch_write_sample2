import 'package:daily_page/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // debugPaintBaselinesEnabled = true;
  // debugPaintSizeEnabled = true;
  // debugPaintLayerBordersEnabled = true;

  await Firebase.initializeApp();

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  runApp(ProviderScope(child: App()));
}
