import 'package:flutter/material.dart';
import '../../../component/component.dart';

// ignore: non_constant_identifier_names
AppBar FindAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.bold),
        children: const [
          TextSpan(
            text: " Search",
            style: TextStyle(color: kTextColor),
          ),
        ],
      ),
    ),
  );
}
