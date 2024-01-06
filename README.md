# Mobile Number Input

`mobile_number_input` is a Flutter package designed to streamline the process of taking a mobile number input from users. It features an intuitive country code picker and ensures consistent phone number formats.

## Features

- **Country Code Picker**: Users can easily select their country code from a dropdown list.
- **Customizable UI**: Style the input field and picker to match your app's design.
- **Input Validation**: Ensures that users enter a valid phone number format.

## Usage

Here's a quick example to get you started:

```dart
import 'package:flutter/material.dart';
import 'package:mobile_number_input/mobile_number_input.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _numberController = TextEditingController();
  CountryCode _selectedCountry = CountryProvider.findCountryByName('United States');

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Number Input Example"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: MobileNumberInput(
            onCountryChanged: (country) {
              setState(() {
                _selectedCountry = country;
              });
            },
            defaultCountry: _selectedCountry,
            controller: _numberController,
            hintText: 'Enter your mobile number',
            // ... other properties ...
          ),
        ),
      ),
    );
  }
}
