import 'package:flightapp/screens/HomePage.dart';
import 'package:flightapp/screens/tabs/flights.dart';
import 'package:flightapp/util/bottomBar.dart';
import 'package:flutter/material.dart';

class FlightSearch extends StatefulWidget {
  const FlightSearch({super.key});

  @override
  State<FlightSearch> createState() => _FlightSearchState();
}

class _FlightSearchState extends State<FlightSearch> {
  List<String> list = <String>[
    "From",
    "Delhi",
    "Noida",
  ];

  List<String> list2 = <String>[
    "To",
    "London",
    "Moscow",
    "New York",
  ];
  String dropdownValue = 'From';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: FloatingActionButton(
            heroTag: Text('BTn1'),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_sharp),
            shape:
                CircleBorder(side: BorderSide(color: Colors.black, width: 1)),
          ),
        ),
        title: Text('Available Flights'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.more_horiz),
              shape:
                  CircleBorder(side: BorderSide(color: Colors.black, width: 1)),
            ),
          )
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 250,
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton.extended(
                            heroTag: Text('BTn2'),
                            onPressed: () {},
                            label: Text('One-Way'),
                            icon: Icon(Icons.trending_neutral_sharp),
                          ),
                          SizedBox(width: 5),
                          FloatingActionButton.extended(
                            heroTag: Text('BTn3'),
                            onPressed: () {},
                            label: Text('RoundTrip'),
                            icon: Icon(Icons.repeat_rounded),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DropdownMenu<String>(
                            initialSelection: list.first,
                            onSelected: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            dropdownMenuEntries:
                                list.map<DropdownMenuEntry<String>>((value) {
                              return DropdownMenuEntry<String>(
                                  value: value, label: value);
                            }).toList(),
                          ),
                          Icon(
                            Icons.flight_takeoff,
                            size: 36,
                          ),
                          DropdownMenu<String>(
                            initialSelection: list2.first,
                            onSelected: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            dropdownMenuEntries:
                                list2.map<DropdownMenuEntry<String>>((value) {
                              return DropdownMenuEntry<String>(
                                  value: value, label: value);
                            }).toList(),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      child: FloatingActionButton.extended(
                        heroTag: Text('BTn4'),
                        onPressed: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        icon: Icon(Icons.repeat),
                        label: Text('Search Again'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ]),
      bottomNavigationBar: BtmBar(),
    );
  }
}
