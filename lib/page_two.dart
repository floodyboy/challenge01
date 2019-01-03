import 'package:challenge01/main.dart';
import 'package:challenge01/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          'assets/images/swimming_header.jpg',
                        ),
                      ),
                    ),
                    height: 225.0,
                  ),
                  Container(
                    height: 225.0,
                    decoration: BoxDecoration(
                        color: Styles.baseColour,
                        gradient: LinearGradient(begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter, colors: [
                          Styles.baseColour.withOpacity(0.5),
                          Colors.white,
                        ], stops: [
                          0.0,
                          1.0
                        ])),
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 150.0,
                      ),
                      Container(
                        height: 70.0,
                        width: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(35.0),
                          color: Styles.baseColour,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 50.0,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 125.0,
                      ),
                      _renderBooking(context),
                      _renderEventListings(),
                      _renderTrendingParticipants(),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _renderBooking(context) {
  return InkWell(
    onTap: () {},
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: Material(
        borderRadius: BorderRadius.circular(10.0),
        elevation: 3.0,
        child: Container(
          width: MediaQuery.of(context).size.width - 20.0,
          height: 175.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15.0, right: 10.0),
                child: renderSportDetail('Swimming', 'assets/images/swimming.svg'),
              ),
              _renderBookSeatsButton(),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _renderBookSeatsButton() {
  return Expanded(
    child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60.0,
          color: Styles.baseColour,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'BOOK SEATS',
                style: Styles.bookSeats,
              )
            ],
          ),
        )),
  );
}

Widget _renderEventListings() {
  return Padding(
    padding: EdgeInsets.all(25.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Event Listings',
          style: Styles.header,
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _renderSportIcon('assets/images/swimming.svg'),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Mens 200m",
              style: Styles.eventListingTitle,
            ),
            Expanded(
              child: Container(),
            ),
            _renderSportIcon('assets/images/swimming.svg'),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Womens 50m",
              style: Styles.eventListingTitle,
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _renderTrendingParticipants() {
  return Padding(
    padding: EdgeInsets.all(25.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Trending Participants',
          style: Styles.header,
        ),
        SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35.0),
                image: DecorationImage(
                  image: AssetImage('assets/images/swimmer.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              "Usain Bolt",
              style: Styles.eventListingTitle,
            ),
            Expanded(
              child: Container(),
            ),
            SvgPicture.asset(
              'assets/images/jamaica.svg',
              height: 50.0,
            )
          ],
        ),
      ],
    ),
  );
}

Widget _renderSportIcon(imgPath) {
  return SvgPicture.asset(
    imgPath,
    height: 50.0,
    width: 50.0,
    color: Colors.black,
  );
}
