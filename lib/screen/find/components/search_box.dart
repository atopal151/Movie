import 'package:flutter/material.dart';

import '../../../component/component.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const SearchBox({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: kTextLightColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        cursorColor: kPrimaryColor,
        onChanged: onChanged,
        decoration: const InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: kPrimaryColor,
          ),
          hintText: "Search ",
          hintStyle: TextStyle(color: kTextLightColor),
        ),
      ),
    );
  }
}
