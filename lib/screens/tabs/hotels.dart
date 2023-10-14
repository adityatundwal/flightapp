import 'package:flutter/material.dart';

class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: 300,
        child: Center(
          child: DropdownButton(
            value: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: const [
              DropdownMenuItem(
                value: 'One',
                child: Text('One'),
              ),
              DropdownMenuItem(
                value: 'Two',
                child: Text('Two'),
              ),
              DropdownMenuItem(
                value: 'Three',
                child: Text('Three'),
              ),
            ],
          ),
        ));
  }
}
