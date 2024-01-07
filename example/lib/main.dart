import 'package:flutter/material.dart';
import 'package:mobile_number_input/mobile_number_input.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _numberController = TextEditingController();
  // select default country
  CountryCode _selectedCountry = CountryProvider.findCountryByName('Slovenia');

  @override
  void dispose() {
    super.dispose();
    _numberController.dispose();
  }

  void _onCountryChanged(CountryCode countryCode) {
    if (mounted) {
      setState(() {
        _selectedCountry = countryCode;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MobileNumberInput(
              onCountryChanged: _onCountryChanged,
              defaultCountry: _selectedCountry,
              controller: _numberController,
              hintText: 'Phone number',
              hintStyle: const TextStyle(color: Color(0xFFBEC0C7)),
              textStyle: const TextStyle(color: Colors.white),
              dialCodeTextStyle: const TextStyle(color: Color(0xFFBEC0C7)),
              arrowColor: Colors.white,
              decoration: BoxDecoration(
                color: const Color(0xFF29374F),
                borderRadius: BorderRadius.circular(15),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Color(0xFF29374F)),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: const BorderSide(color: Colors.blue),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {
              print('${_selectedCountry.dialCode}${_numberController.text}');
            },
            child: const Text('Print number'),
          )
        ],
      ),
    );
  }
}
