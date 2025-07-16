import 'package:flutter/material.dart';

class CustomInputWidget extends StatefulWidget
{
  const CustomInputWidget({super.key});
  @override
  _CustomInputWidgetState createState() => _CustomInputWidgetState();
}

class _CustomInputWidgetState extends State<CustomInputWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            labelText: 'Enter text',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            // Handle text input changes
          },
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          child: Text('Submit'),
        ),
      ],
    );
  }
}