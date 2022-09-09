import 'package:flutter/material.dart';
import 'package:movie_info/component/component.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({Key? key}) : super(key: key);

  @override
  State<SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Application",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black38),
            ),
          ),
          Row(
            children: const [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Share the App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kTextColor),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Icon(
                        Icons.share,
                        color: kPrimaryColor,
                      ),
                    )),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Contact",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kTextColor),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Icon(
                        Icons.phone,
                        color: kPrimaryColor,
                      ),
                    )),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Rate The App",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kTextColor),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: InkWell(
                      child: Icon(
                        Icons.star,
                        color: kPrimaryColor,
                      ),
                    )),
              ),
            ],
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Version 1.0.0",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black38),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
