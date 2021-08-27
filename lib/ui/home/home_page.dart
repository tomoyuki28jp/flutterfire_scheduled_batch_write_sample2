import 'package:daily_page/ui/component/drawer/member_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('home')),
        drawer: const MemberDrawer(),
        body: const Text('home page'));
  }
}
