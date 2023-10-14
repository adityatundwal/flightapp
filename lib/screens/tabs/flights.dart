import 'package:flightapp/screens/FlightSearch.dart';
import 'package:flightapp/util/Carousel.dart';
import 'package:flutter/material.dart';

class Flights extends StatefulWidget {
  const Flights({super.key});

  @override
  State<Flights> createState() => _FlightsState();
}

class _FlightsState extends State<Flights> {
  String fromdropdownValue = 'London(LHR)';
  List<bool> isSelected = [
    false,
    false,
  ];

  String dropdownValue = 'From';

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

  List<String> Passenger = <String>[
    "1 Adult",
    "2 Adult",
    "3 Adult",
    "4 Adult",
  ];

  List<String> Classes = <String>[
    "Passenger",
    "Economy",
    "Business",
    "Executive",
  ];

  final gradient = LinearGradient(colors: [Colors.amber, Colors.red]);
  final textStyle = TextStyle(
    fontSize: 14,
  );

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2050),
    ).then((value) => {
          setState(() {
            _dateTime = value!;
          }),
        });
  }

  DateTime _dateTime = DateTime.now();

  //   "Indira Gandhi International Airport, Delhi",
  //   "Netaji Subhash Chandra Bose International Airport, Kolkata",
  //   "Chennai International Airport, Chennai",
  //   "Thiruvananthapuram International Airport",
  //   "Sardar Vallabh Bhai Patel International Airport, Ahmedabad",
  //   "Guru Ram Dass Jee International Airport, Amritsar",
  //   "Chattrapati Shivaji International Airport, Mumbai",
  // ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              FloatingActionButton.extended(
                heroTag: Text('BTn8'),
                onPressed: () {},
                label: Text('One-Way'),
                icon: Icon(Icons.trending_neutral_sharp),
              ),
              SizedBox(width: 5),
              FloatingActionButton.extended(
                heroTag: Text('BTn7'),
                onPressed: () {},
                label: Text('RoundTrip'),
                icon: Icon(Icons.repeat_rounded),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
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
              dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((value) {
                return DropdownMenuEntry<String>(value: value, label: value);
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
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DropdownMenu<String>(
              initialSelection: Passenger.first,
              onSelected: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries:
                  Passenger.map<DropdownMenuEntry<String>>((value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
            Icon(
              Icons.people,
              size: 36,
            ),
            DropdownMenu<String>(
              initialSelection: Classes.first,
              onSelected: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries:
                  Classes.map<DropdownMenuEntry<String>>((value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        side: BorderSide(width: 1, color: Colors.grey)),
                    onPressed: _showDatePicker,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(width: 7),
                          Text(
                            'Departure Date',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          SizedBox(height: 15),
                          Text(
                            _dateTime.day.toString() +
                                " / " +
                                _dateTime.month.toString() +
                                " / " +
                                _dateTime.year.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
            SizedBox(width: 5),
            Column(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        elevation: 0,
                        side: BorderSide(width: 1, color: Colors.grey)),
                    onPressed: _showDatePicker,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 7),
                          Text(
                            'Return Date',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            _dateTime.day.toString() +
                                " / " +
                                _dateTime.month.toString() +
                                " / " +
                                _dateTime.year.toString(),
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ],
        ),
        SizedBox(height: 30),
        Container(
          width: double.maxFinite,
          child: FloatingActionButton.extended(
            heroTag: Text('BTn5'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FlightSearch()));
            },
            icon: Icon(Icons.search_outlined),
            label: Text('Search'),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Hot Deals',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            Carousel()
          ],
        ),
      ],
    );
  }
}
