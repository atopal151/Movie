import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/settings_appbar.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SettingAppBar(context),
        backgroundColor: Colors.white,
        body: const SettingsBody());
  }
}
