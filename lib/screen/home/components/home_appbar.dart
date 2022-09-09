import 'package:flutter/material.dart';
import '../../../component/component.dart';

// ignore: non_constant_identifier_names
AppBar HomeAppBar(BuildContext context) {
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
            text: " Movie Advice",
            style: TextStyle(color: kTextColor),
          ),
        ],
      ),
    ),
    actions: const <Widget>[
      Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(
            Icons.toggle_off,
            size: 30,
            color: kPrimaryColor,
          )),
    ],
  );
}
