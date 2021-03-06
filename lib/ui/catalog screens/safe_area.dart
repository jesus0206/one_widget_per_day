import 'package:flutter/material.dart';
import 'package:one_widget_per_day/resources/strings.dart';
import 'package:one_widget_per_day/ui/home/contents/widgets/contentBody.dart';
import 'package:one_widget_per_day/ui/home/contents/widgets/contentHeader.dart';
import 'package:one_widget_per_day/ui/widgets/image.dart';

class SafeAreaScreen extends StatefulWidget {
  @override
  _SafeAreaScreenState createState() => _SafeAreaScreenState();
}

class _SafeAreaScreenState extends State<SafeAreaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(55, 58, 54, 1),
      appBar: AppBar(
        title: Text('Safe Area'),
        backgroundColor: Color.fromRGBO(55, 58, 54, 1),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 200,
                width: double.infinity,
                child: CustomImageWidgetScreen(),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 180.0, 16.0, 16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ContentHeader(
                      title: Strings.CATALOG_SAFE_AREA,
                      date: '06/12/2020 - Gabriela Santos',
                    ),
                    ContentTextBody(
                      text: Strings.SAFE_AREA_TEXT01,
                    ),
                    SizedBox(height: 10.0),
                    ContentTextBody(
                      text: Strings.SAFE_AREA_TEXT02,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
