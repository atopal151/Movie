import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/find_appbar.dart';

class FindScreen extends StatelessWidget {
  const FindScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: FindAppBar(context),
        backgroundColor: Colors.white,
        body: const FindBody());
  }
}
