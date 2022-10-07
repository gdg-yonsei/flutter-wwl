import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const _PATH = "assets/image";
  static const _PICO1 = "$_PATH/20201020_155330.jpg";
  static const _PICO2 = "$_PATH/20201020_155421.jpg";
  static const _PICO3 = "$_PATH/20201221_152132.jpg";
  static const _PICO4 = "$_PATH/20210111_164502.jpg";
  static const _PICO5 = "$_PATH/20210118_170357.jpg";
  static const _PICO6 = "$_PATH/20210125_153311.jpg";
  static const _PICO7 = "$_PATH/20210201_163452.jpg";
  static const _PICO8 = "$_PATH/20210201_163452(0).jpg";
  static const _PICO9 = "$_PATH/20210201_163454.jpg";
  static const _PICO10 = "$_PATH/20210217_11029.jpg";
  static const _PICO11 = "$_PATH/image1.jpg";
  static const _PICO12 = "$_PATH/image2.jpg";
  static const _PICO13 = "$_PATH/image3.jpg";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              constraints: BoxConstraints.expand(height: 30),
              alignment: Alignment.center,
              child: Image.asset(
                "assets/image/20201020_155330.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "width = 50, height = 50",
              style: TextStyle(color: Colors.black),
            ),
            _limitSize(),
            Text(
              "fit = BoxFit.fill",
              style: TextStyle(color: Colors.black),
            ),
            _fillImage(),
            Text(
              "BoxFit.fitWidth       BoxFit.fitHeight       BoxFit.fitContain",
              style: TextStyle(color: Colors.black),
            ),
            _fitContain(),
            Text(
              "BoxFit.fitScale               BoxFit.fitNone",
              style: TextStyle(color: Colors.black),
            ),
            _fitScaleNone(),
            Text(
              "color, colorblend",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 20),
            Container(
              width: 80,
              height: 80,
              child: Image.asset(
                MyHomePage._PICO6,
                fit: BoxFit.contain,
              ),
            ),
            _blendImage2(),
            SizedBox(height: 10),
            Text(
              "ImageRepeat.repeatX",
              style: TextStyle(color: Colors.black),
            ),
            _repeatImage(),
            Text(
              "Directionality",
              style: TextStyle(color: Colors.black),
            ),
            _directionImage(),
            Text(
              "filterQuality: high vs none",
              style: TextStyle(color: Colors.black),
            ),
            _qualityImage(),
          ]),
    );
  }

  Widget _limitSize() =>
      Container(
          color: Colors.greenAccent,
          child: Image.asset(
            _PICO2,
            height: 50,
            width: 70,
          ));

  Widget _fillImage() =>
      Container(
        child: Image.asset(
          _PICO3,
          width: 70,
          height: 70,
          fit: BoxFit.fill,
        ),
      );

  Widget _fitContain() =>
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            color: Colors.yellowAccent,
            width: 50,
            height: 50,
            child: Image.asset(
              _PICO11,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            color: Colors.yellowAccent,
            width: 50,
            height: 50,
            child: Image.asset(
              _PICO11,
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            color: Colors.pinkAccent,
            height: 50,
            width: 50,
            child: Image.asset(
              _PICO11,
              fit: BoxFit.contain,
            ),
          ),
        ],
      );

  Widget _fitScaleNone() =>
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: Colors.lightBlueAccent,
            height: 50,
            width: 50,
            child: Image.asset(
              _PICO12,
              fit: BoxFit.scaleDown,
            ),
          ),
          SizedBox(width: 10,),
          Container(
            color: Colors.blueAccent,
            width: 50,
            height: 50,
            child: Image.asset(
              _PICO12,
              fit: BoxFit.none,
            ),
          )
        ],
      );

  Widget _blendImage2() => Container(
    constraints: BoxConstraints.expand(height: 50),
    child: Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            child: Image.asset(
              _PICO6,
              color: Colors.purpleAccent,
              colorBlendMode: BlendMode.lighten,
            ),
          ),
        ),
      ],
    ),
  );

  Widget _repeatImage() => Container(
    constraints: BoxConstraints.expand(height: 50),
    child: Image.asset(
      MyHomePage._PICO8,
      repeat: ImageRepeat.repeatX,
      fit: BoxFit.contain,
    ),
  );

  Widget _directionImage() => Container(
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        Directionality(textDirection: TextDirection.ltr, child: Image.asset(_PICO9, matchTextDirection: true,)),
        Directionality(textDirection: TextDirection.rtl, child: Image.asset(_PICO9, matchTextDirection: true,)),
      ],
    ),
  );

  Widget _qualityImage() => Container(
      height: 80,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.asset(
              _PICO13,
              filterQuality: FilterQuality.high,
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              _PICO13,
              filterQuality: FilterQuality.none,
            ),
          ),
        ],
      ));
}