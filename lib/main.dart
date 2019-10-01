import 'package:flutter/material.dart';
import 'package:flutter_web_page/light_shop_page.dart';

void main() => runApp(WebApp());

class WebApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Wrap(
            children: <Widget>[
              RaisedButton(
                child: Text('light shop page'),
                onPressed: _showLightShopPage(context),
              )
            ],
          ),
        ),
      ),
    );
  }

  _showLightShopPage(BuildContext context) {
    return () {
      Navigator.push(context, MaterialPageRoute(
        builder: (BuildContext context) {
          return LightShopPage();
        },
      ));
    };
  }
}
