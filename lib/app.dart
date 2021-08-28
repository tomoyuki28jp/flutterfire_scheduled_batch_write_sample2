import 'dart:io';

import 'package:daily_page/data/provider/firebase_auth/firebase_auth_provider.dart';
import 'package:daily_page/data/service/activity_tracker.dart';
import 'package:daily_page/ui/auth/auth_page.dart';
import 'package:daily_page/ui/component/error/error_page.dart';
import 'package:daily_page/ui/component/loading/loading_page.dart';
import 'package:daily_page/ui/home/home_page.dart';
import 'package:daily_page/ui/route/app_route.dart';
import 'package:daily_page/ui/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final theme = useProvider(appThemeProvider);
    final themeMode = useProvider(appThemeModeProvider);
    final authState = useProvider(authStateProvider);
    if (Platform.isMacOS) {
      final uid = useProvider(uidProvider.select((uid) => uid.data?.value));
      if (uid != null) {
        useProvider(activityTrackerProvider(uid));
      }
    }

    return MaterialApp(
        theme: theme.data,
        darkTheme: AppTheme.dark().data,
        themeMode: themeMode,
        onGenerateRoute: AppRoute.onGenerateRoute,
        home: authState.when(
            data: (user) => user == null ? const AuthPage() : const HomePage(),
            loading: () => const LoadingPage(),
            error: (_, __) => const ErrorPage()));
  }
}
