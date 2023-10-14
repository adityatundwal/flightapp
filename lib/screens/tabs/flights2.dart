import 'package:flutter/material.dart';

class Flights2 extends StatefulWidget {
  const Flights2({super.key});

  @override
  State<Flights2> createState() => _Flights2State();
}

class _Flights2State extends State<Flights2> {
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

  List<String> Classes = <String>[
    "Passenger",
    "Economy",
    "Business",
    "Executive",
  ];

  List<String> Passenger = <String>[
    "1 Adult",
    "2 Adult",
    "3 Adult",
    "4 Adult",
  ];

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

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text('One-Way'),
              icon: Icon(Icons.trending_neutral_sharp),
            ),
            SizedBox(width: 5),
            FloatingActionButton.extended(
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
            dropdownMenuEntries: list2.map<DropdownMenuEntry<String>>((value) {
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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.date_range_outlined),
                            SizedBox(width: 7),
                            Text(
                              'Departure Date',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
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
                        Row(
                          children: [
                            Icon(Icons.date_range_outlined),
                            SizedBox(width: 7),
                            Text(
                              'Return Date',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.black),
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
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
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ],
      ),
      SizedBox(height: 20),
      FloatingActionButton.extended(
        onPressed: () {},
        label: Text('Search'),
      )
    ]);
  }
}
