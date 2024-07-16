import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String selectedvalue = "Kitkat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DropDown"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: MediaQuery.of(context).size.width,
              height: 70,
             // color: Colors.pinkAccent,
              child: DropdownButton<String>(
                isExpanded: true,
                dropdownColor: Colors.grey,
                value: selectedvalue,
                icon: Icon(Icons.arrow_drop_down_circle_outlined),
                onChanged: (String? newvalue) {
                  setState(() {
                    selectedvalue = newvalue!;
                  });
                },
                items: <String>[
                  'Kitkat',
                  'Dairy Milk',
                  'Cadbarry',
                  'Dark Coholate',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
