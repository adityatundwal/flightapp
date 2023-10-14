import 'package:flightapp/screens/FlightSearch.dart';
import 'package:flightapp/screens/tabs/events.dart';
import 'package:flightapp/screens/tabs/flights.dart';
import 'package:flightapp/screens/tabs/hotels.dart';
import 'package:flightapp/util/appbar.dart';
import 'package:flightapp/util/bottomBar.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: appBar(),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.flight,
                  ),
                  text: 'Flight',
                ),
                Tab(
                  icon: Icon(Icons.hotel),
                  text: 'Hotel',
                ),
                Tab(
                  icon: Icon(Icons.luggage),
                  text: 'Events',
                ),
              ],
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            child: Container(
              height: 540,
              child: TabBarView(children: [
                Flights(),
                Hotels(),
                Events(),
              ]),
            ),
          )
        ]),
        bottomNavigationBar: BtmBar(),
      ),
    );
  }
}
