import 'package:catcher/catcher.dart';
import 'package:daily_page/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // debugPaintBaselinesEnabled = true;
  // debugPaintSizeEnabled = true;
  // debugPaintLayerBordersEnabled = true;

  // Firebase
  await Firebase.initializeApp();
  // Crashlytics
  await FirebaseCrashlytics.instance
      .setCrashlyticsCollectionEnabled(kDebugMode);
  Function originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) async {
    await FirebaseCrashlytics.instance.recordFlutterError(errorDetails);
    originalOnError(errorDetails);
  };

  if (kReleaseMode) {
    debugPrint = (message, {wrapWidth}) {};
  }

  final debugOptions = CatcherOptions(DialogReportMode(), [ToastHandler()]);

  final releaseOptions = CatcherOptions(DialogReportMode(), []);

  Catcher(
      rootWidget: ProviderScope(child: App()),
      debugConfig: debugOptions,
      releaseConfig: releaseOptions);
}
