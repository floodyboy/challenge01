import 'package:challenge01/page_two.dart';
import 'package:challenge01/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: new Text(
          '7th Day',
        ),
        backgroundColor: Styles.baseColour,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                  ),
                  Container(
                    height: 75.0,
                    width: double.infinity,
                    color: Styles.baseColour,
                  ),
                  Positioned(
                    child: Column(
                      children: <Widget>[
                        _renderCard(context, 'Archery', 'assets/images/archer.svg'),
                        _renderCard(context, 'Swimming', 'assets/images/swimming.svg'),
                        _renderCard(context, 'Cycling', 'assets/images/cycling.svg'),
                        _renderCard(context, 'Weightlifting', 'assets/images/weightlifting.svg'),
                        _renderCard(context, 'Archery', 'assets/images/archer.svg'),
                        _renderCard(context, 'Swimming', 'assets/images/swimming.svg'),
                        _renderCard(context, 'Cycling', 'assets/images/cycling.svg'),
                        _renderCard(context, 'Weightlifting', 'assets/images/weightlifting.svg'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _renderCard(context, title, imgPath) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => PageTwo()));
    },
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 3.0,
        child: Container(
          padding: EdgeInsets.only(left: 15.0, right: 10.0),
          width: MediaQuery.of(context).size.width - 20.0,
          height: 150.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: renderSportDetail(title, imgPath),
        ),
      ),
    ),
  );
}

Widget renderSportDetail(title, imgPath) {
  return Row(
    children: <Widget>[
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _renderSportIcon(imgPath),
        ],
      ),
      SizedBox(
        width: 25.0,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: Styles.sportTitle,
          ),
          SizedBox(
            height: 10.0,
          ),
          _renderSportInfo(Icons.alarm, '11 am - 3 pm'),
          SizedBox(
            height: 5.0,
          ),
          _renderSportInfo(Icons.location_on, 'Olympic Stadium'),
        ],
      )
    ],
  );
}

Widget _renderSportIcon(imgPath) {
  return SvgPicture.asset(
    imgPath,
    height: 100.0,
    width: 100.0,
    color: Styles.baseColour,
  );
}

Widget _renderSportInfo(icon, text) {
  return Row(
    children: <Widget>[
      Icon(
        icon,
        color: Styles.cardInfoColour,
        size: Styles.sportInfoHeight,
      ),
      SizedBox(
        width: 10.0,
      ),
      Text(
        text,
        style: Styles.sportInfo,
      )
    ],
  );
}
