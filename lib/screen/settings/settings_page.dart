import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movie_info/component/component.dart';
import 'components/body.dart';
import 'components/settings_appbar.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String name = "adas";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingAppBar(context),
      backgroundColor: Colors.white,
      body: const SettingsBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          _firestore
              .doc('favorites/${_firestore.collection("favorites").doc().id}')
              .set({
            'wallpaper_pic': name,
            'shareuid': name,
            'name': name,
            'addeduser': name,
          }, SetOptions(merge: true));
        },
        child: const Text("FB"),
      ),
    );
  }
}
