import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/favorite_appbar.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: FavoriteAppBar(context),
        backgroundColor: Colors.white,
        body: const FavoriteBody());
  }
}
