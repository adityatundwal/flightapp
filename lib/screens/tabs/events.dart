import 'package:flutter/material.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  String dropdownValue = 'From';

  List<String> list = <String>[
    "From",
    "Delhi",
    "Noida",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          children: [
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(side: BorderSide(width: 1)),
              child: Column(
                children: [
                  Text('From'),
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
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
