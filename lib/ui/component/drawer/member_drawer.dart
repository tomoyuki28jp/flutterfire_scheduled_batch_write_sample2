import 'package:daily_page/data/provider/firebase_auth/firebase_auth_provider.dart';
import 'package:daily_page/ui/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MemberDrawer extends HookWidget {
  const MemberDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userViewModel = useProvider(authViewModelProvider);
    final firebaseUser =
        useProvider(authStateProvider.select((user) => user.data?.value));

    return Drawer(
        child: ListView(padding: EdgeInsets.zero, children: <Widget>[
      DrawerHeader(child: Text(firebaseUser?.email ?? '')),
      ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Home'),
          onTap: () {}),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('Sign out'),
        onTap: userViewModel.signOut,
      )
    ]));
  }
}
