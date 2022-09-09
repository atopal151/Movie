import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: HomeAppBar(context),
        backgroundColor: Colors.white,
        body: const HomeBody());
  }
}
